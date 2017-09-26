@ECHO off

REM -- Change to the directory of the executing batch file
CD "%~dp0"

SET Meld=Meld-3.16.0-win32.msi
SET KDiff=KDiff3-32bit-Setup_0.9.98-3.exe
ECHO "Installing Meld"
"%~dp0\%Meld%" /passive 
ECHO "Installing Kdiff3"
"%~dp0\%KDiff%" /S

ECHO "Extra Package install complete."
PAUSE