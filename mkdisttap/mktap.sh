#!/bin/bash
# mktap.sh - Create 2.11BSD-style tape image
# Usage: ./mktap.sh blah.tar blah.tap

set -euo pipefail

TMPDIR=$(mktemp -d "${TMPDIR:-/tmp}/mktap.XXXXXX")
trap 'rm -rf "$TMPDIR"' EXIT

# Write 4-byte little-endian length
write_le32() {
    printf '\\x%02x\\x%02x\\x%02x\\x%02x' \
        $(( $1 & 0xff )) \
        $(( ($1 >> 8) & 0xff )) \
        $(( ($1 >> 16) & 0xff )) \
        $(( ($1 >> 24) & 0xff )) | printf '%b' "$(cat)"
}

end_file() {
    printf '\0\0\0\0'
}

# Fast add_file using split
add_file() {
    local file="$1"
    local bs="$2"
    local base="$TMPDIR/chunk"

    if [[ ! -f "$file" ]]; then
        echo "Error: '$file' not found" >&2
        exit 1
    fi

    # Split the file into bs-sized pieces (last one may be smaller)
    split -b "$bs" --numeric-suffixes=0 --suffix-length=8 "$file" "$base."

    # Process each chunk
    for chunk in "$base."*; do
        [[ -f "$chunk" ]] || continue

        bytes=$(wc -c < "$chunk")

        # Write length + data + length
        write_le32 "$bytes"
        cat "$chunk"
        write_le32 "$bytes"

        # If it was a short block, pad with nulls
        if [[ $bytes -lt $bs ]]; then
            padding=$(( bs - bytes ))
            printf '%*s' "$padding" '' | tr ' ' '\0'
        fi
    done

    # Clean chunks immediately
    rm -f "$base."*
}

(
add_file "$1" 10240
end_file; end_file; end_file
) | dd of="$2" bs=1M conv=notrunc status=none
