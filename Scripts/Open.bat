@ECHO OFF

IF "%UE_VERSION%" == "" (
    ECHO ABORTED: Environment Variable 'UE_VERSION' is not defined
    EXIT /B
)

IF "%UE_HOME%" == "" (
    ECHO ABORTED: Environment Variable 'UE_HOME' is not defined
    EXIT /B
)

IF "%1" == "" (
    ECHO ABORTED: Unreal project name name was not provided
    ECHO EXAMPLE: Open MyProject
    EXIT /B
)

SET UE=%UE_HOME%%UE_VERSION%

SET ROOT_DIR=%~dp0
SET ROOT_DIR=%ROOT_DIR:~0,-1%

SET PROJECT=%1
SET PROJECT_DIR=%ROOT_DIR%\%PROJECT%
SET UPROJECT_PATH=%PROJECT_DIR%\%PROJECT%.uproject

ECHO Opening %PROJECT% with Unreal Engine at %UE%

SET UE_EDITOR=%UE%\Engine\Binaries\Win64\UnrealEditor.exe

START "%UE_EDITOR%" "%UPROJECT_PATH%"
