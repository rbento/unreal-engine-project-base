@ECHO OFF

SETLOCAL

CALL Vars.bat %1 || EXIT /B 

SET RESX=%2
SET RESY=%3

SET WINDOWED=
IF "%RESX%" NEQ "" (
    IF "%RESY%" NEQ "" (
        SET WINDOWED=-windowed -resx=%RESX% -resy=%RESY% 
    )
)

SET VIEW_MODE=Full Screen
IF "%WINDOWED%" NEQ "" (
    SET VIEW_MODE=Windowed - %RESX% X %RESY%
)

SET UE_EDITOR=%UE%\Engine\Binaries\Win64\UnrealEditor.exe

SET TRY_CMD="%UE_EDITOR%" "%UPROJECT_PATH%" -game -log %WINDOWED%

ECHO Trying %PROJECT% in Development Mode - %VIEW_MODE%
ECHO Command: %PLAY_CMD%

CALL %TRY_CMD%