git clone https://github.com/simh/simh.git
git checkout %1
CD simh
build_vstudio.bat BuildROMs VAX|more
CD ..
COPY C:\projects\auto-quas\simh\BIN\NT\Win32-Release\MicroVAX3900.exe C:\projects\auto-quas\simh\BIN
SET OPATH=%PATH%
SET PATH=C:\mingw-w64\x86_64-8.1.0-posix-seh-rt_v6-rev0\mingw64\bin;%OPATH%;C:\Program Files\Git\bin;C:\Program Files\Git\usr\bin

bash -c './script buildgzcompatwin'
bash -c './script maketap'
bash -c './script writeinis'
bash -c './script runit'
