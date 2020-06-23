git clone https://github.com/simh/simh.git
cd simh
build_vstudio.bat BuildROMs VAX|more
echo
echo ++++++++++ done1
type c:\projects\hello\simh\BIN\NT\Project\simh\VAX\Win32-Release\BuildLog.htm
echo
echo ++++++++++ done2
type c:\projects\hello\simh\BIN\NT\Project\simh\BuildROMs\Win32-Release\BuildLog.htm
echo
echo ++++++++++ done3
cd ..
copy C:\projects\hello\simh\BIN\NT\Win32-Release\MicroVAX3900.exe .\
echo sh ver| microvax3900
echo ++++++++++ done4
SET OPATH=%PATH%
SET PATH=c:\MinGW\bin;c:\MinGW\usr\bin;%OPATH%
gcc -o hello.exe hello.c
echo ++++++++++ done5
hello.exe
echo ++++++++++ done6
perl -e 'print "hello world!\n"'
echo ++++++++++ done7
