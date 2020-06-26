DIR C:\
REM git clone https://github.com/simh/simh.git
REM cd simh
REM pwd
REM echo bashmaybe $SHELL
REM REM comment
REM dir /s /b
REM build_vstudio.bat BuildROMs VAX|more
REM echo
REM echo ++++++++++ done1
REM type c:\projects\hello\simh\BIN\NT\Project\simh\VAX\Win32-Release\BuildLog.htm
REM echo -
REM echo ++++++++++ done2
REM type c:\projects\hello\simh\BIN\NT\Project\simh\BuildROMs\Win32-Release\BuildLog.htm
REM echo -
REM echo ++++++++++ done3
REM cd ..
REM copy C:\projects\hello\simh\BIN\NT\Win32-Release\MicroVAX3900.exe .\
REM echo sh ver| microvax3900
REM echo ++++++++++ done4
REM DIR C:\
echo %PATH%
SET OPATH=%PATH%
SET PATH=c:\MinGW\bin;c:\MinGW\usr\bin;%OPATH%
echo %PATH%
REM DIR C:\
REM echo %PATH%
REM gcc -o hello.exe hello.c
REM echo ++++++++++ done5
REM hello.exe
REM echo ++++++++++ done6
REM perl -e 'print "hello world!\n"'
REM echo ++++++++++ done7
