git clone https://github.com/simh/simh.git
CD simh
build_vstudio.bat BuildROMs VAX|more
CD ..
COPY C:\projects\auto-quas\simh\BIN\NT\Win32-Release\MicroVAX3900.exe C:\projects\auto-quas\simh\BIN
SET OPATH=%PATH%
SET PATH=c:\MinGW\bin;c:\MinGW\usr\bin;.;%OPATH%
bash -c './script buildgzcompatwin'
bash -c './script maketap'
bash -c './script writeinis'
bash -c './script runit'
