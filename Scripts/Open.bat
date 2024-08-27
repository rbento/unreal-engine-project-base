@ECHO OFF

SETLOCAL

CALL Vars.bat %1 || EXIT /B 

ECHO Opening %PROJECT% with Unreal Engine at %UE%

SET UE_EDITOR=%UE%\Engine\Binaries\Win64\UnrealEditor.exe

START "%UE_EDITOR%" "%UPROJECT_PATH%" -log
