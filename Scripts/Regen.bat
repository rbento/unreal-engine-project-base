@ECHO OFF

SETLOCAL

SET CURRENT_DIR=%~dp0

SET UDATE=%DATE%

FOR /f "tokens=*" %%A IN ("%TIME%") DO SET UTIME=%%~pnxA
SET UTIME=%UTIME:~1%

CALL "%CURRENT_DIR%Vars.bat" %1 || EXIT /B 

ECHO Running with Unreal Engine at %UE%

ECHO Project: %UPROJECT_PATH%

SET REGEN_CMD="%UE_BUILD_TOOL_BAT%" -projectfiles -project="%UPROJECT_PATH%" -game -rocket -progress -log="%UPROJECT_DIR%/Saved/Logs/UnrealVersionSelector-%UDATE%-%UTIME%.log"

ECHO Command: %REGEN_CMD%

CALL %REGEN_CMD% || EXIT /B 

