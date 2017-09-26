@echo off
set TEMP_PATH=%PATH%

rem REM Prepend C:\Python34 and C:\Python34\Scripts
rem set toAdd=C:\Python34
rem call "%~dp0\inPath" toAdd
rem if ERRORLEVEL==1 set TEMP_PATH="%toAdd%;%TEMP_PATH%"

rem set toAdd=C:\Python34\Scripts
rem call "%~dp0\inPath" toAdd
rem if ERRORLEVEL==1 set TEMP_PATH="%toAdd%;%TEMP_PATH%"

REM Append C:\cygwin\bin and C:\bin
set toAdd=C:\cygwin\bin
call "%~dp0\inPath" toAdd
if ERRORLEVEL==1 set TEMP_PATH="%TEMP_PATH%;%toAdd%"

set toAdd=C:\bin
call "%~dp0\inPath" toAdd
if ERRORLEVEL==1 set TEMP_PATH="%TEMP_PATH%;%toAdd%"

set TEMP_PATH=%TEMP_PATH:"=%
REM echo %TEMP_PATH%
SETX PATH "%TEMP_PATH%" /M