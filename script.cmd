REM DIR C:\
git clone https://github.com/simh/simh.git
cd simh
REM echo bashmaybe $SHELL
REM REM comment
REM dir /s /b
build_vstudio.bat BuildROMs VAX|more
REM echo
REM echo ++++++++++ done1
REM type c:\projects\hello\simh\BIN\NT\Project\simh\VAX\Win32-Release\BuildLog.htm
REM echo -
REM echo ++++++++++ done2
REM type c:\projects\hello\simh\BIN\NT\Project\simh\BuildROMs\Win32-Release\BuildLog.htm
REM echo -
REM echo ++++++++++ done3
cd ..
DIR /S /B MicroVAX3900.exe 
copy C:\projects\auto-quas\simh\BIN\NT\Win32-Release\MicroVAX3900.exe C:\projects\auto-quas\simh\BIN

REM echo sh ver| microvax3900
REM echo ++++++++++ done4
REM DIR C:\
gcc -v
echo %PATH%
SET OPATH=%PATH%
SET PATH=c:\MinGW\bin;c:\MinGW\usr\bin;.;%OPATH%
echo %PATH%
gcc -v

bash -c './script buildgzcompatwin'
bash -c './script maketap'
bash -c './script writeinis'
bash -c './script runit'

REM DIR C:\
REM echo %PATH%
REM gcc -o hello.exe hello.c
REM echo ++++++++++ done5
REM hello.exe
REM echo ++++++++++ done6
REM perl -e 'print "hello world!\n"'
REM echo ++++++++++ done7
