@ECHO OFF

SETLOCAL

SET CURRENT_DIR=%~dp0

CALL "%CURRENT_DIR%Vars.bat" %1 || EXIT /B

ECHO Running with Unreal Engine at %UE%

ECHO Project: %UPROJECT_PATH%

SET ULOG_SUFFIX=%DATE%-%RANDOM%%RANDOM%%RANDOM%

SET REGEN_CMD="%UE_BUILD_TOOL_BAT%" -projectfiles -project="%UPROJECT_PATH%" -game -rocket -progress -log="%UPROJECT_DIR%/Saved/Logs/UnrealVersionSelector-%ULOG_SUFFIX%.log"

ECHO Command: %REGEN_CMD%

CALL %REGEN_CMD% || EXIT /B 
