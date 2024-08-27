@ECHO OFF

IF "%UE_VERSION%" == "" (
    ECHO ABORTED: Environment Variable 'UE_VERSION' is not defined
    EXIT /B 1
)

IF "%UE_HOME%" == "" (
    ECHO ABORTED: Environment Variable 'UE_HOME' is not defined
    EXIT /B 1
)

IF "%1" == "" (
    ECHO ABORTED: Unreal project name name was not provided
    EXIT /B 1
)

SET UE=%UE_HOME%%UE_VERSION%
SET ROOT_DIR=%~dp0
SET ROOT_DIR=%ROOT_DIR:~0,-1%
SET PROJECT=%1
SET PROJECT_DIR=%ROOT_DIR%\%PROJECT%
SET UPROJECT_PATH=%PROJECT_DIR%\%PROJECT%.uproject
