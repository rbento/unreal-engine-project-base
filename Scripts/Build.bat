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
    ECHO EXAMPLE: Build MyProject
    EXIT /B
)

SET UE=%UE_HOME%%UE_VERSION%

ECHO Building with Unreal Engine at %UE%

SET ROOT_DIR=%~dp0
SET ROOT_DIR=%ROOT_DIR:~0,-1%

SET PROJECT=%1
SET PROJECT_DIR=%ROOT_DIR%\%PROJECT%
SET UPROJECT_PATH=%PROJECT_DIR%\%PROJECT%.uproject

ECHO Project: %UPROJECT_PATH%

SET BUILD_BAT=%UE%\Engine\Build\BatchFiles\Build.bat

SET BUILD_CMD="%BUILD_BAT%" %PROJECT%Editor Win64 Development "%UPROJECT_PATH%" -waitmutex -NoHotReload

ECHO Build Command: %BUILD_CMD%

CALL %BUILD_CMD%
