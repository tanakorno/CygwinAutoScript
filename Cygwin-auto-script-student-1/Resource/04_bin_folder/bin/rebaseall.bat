REM -- Check run with administrator privileges
NET SESSION >NUL 2>&1
IF NOT %errorLevel% == 0 (
    echo "ERROR: RUN AS ADMIN ONLY!!!"
    PAUSE
    EXIT /B 0
)

c:/cygwin/bin/ash.exe -c "rebaseall -v"