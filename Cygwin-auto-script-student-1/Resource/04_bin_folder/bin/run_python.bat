@echo off
REM Python3 cygwin
C:\cygwin\bin\mintty.exe -t %1 -h always -e python3 %1 %2
REM Python3 External
REM C:\cygwin\bin\mintty.exe -t %1 -h always -e /cygdrive/c/Python34/pythonw.exe %1 %2
exit