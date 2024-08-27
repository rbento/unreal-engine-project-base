@ECHO OFF

SETLOCAL

CALL Vars.bat %1 || EXIT /B 

ECHO Cooking with Unreal Engine at %UE%

ECHO Project: %UPROJECT_PATH%

SET UE_EDITOR_CMD=%UE%\Engine\Binaries\Win64\UnrealEditor-Cmd.exe

SET COOK_CMD="%UE_EDITOR_CMD%" "%UPROJECT_PATH%" -run=cook -targetplatform=Windows

ECHO Command: %COOK_CMD%

CALL %COOK_CMD%
