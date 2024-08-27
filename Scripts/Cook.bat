@ECHO OFF

SETLOCAL

SET CURRENT_DIR=%~dp0

CALL "%CURRENT_DIR%Vars.bat" %1 || EXIT /B 

ECHO Cooking with Unreal Engine at %UE%

ECHO Project: %UPROJECT_PATH%

SET COOK_CMD="%UE_EDITOR_CMD_EXE%" "%UPROJECT_PATH%" -run=cook -targetplatform=Windows

ECHO Command: %COOK_CMD%

CALL %COOK_CMD%
