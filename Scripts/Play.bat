@ECHO OFF

SETLOCAL

SET CURRENT_DIR=%~dp0

CALL "%CURRENT_DIR%Vars.bat" %1 || EXIT /B 

SET PLAY_CMD="%PROJECT_DIR%"\Binaries\Win64\%PROJECT%.exe

ECHO Playing %PROJECT% in Development Mode - Standalone
ECHO Command: %PLAY_CMD%

START %PLAY_CMD%
