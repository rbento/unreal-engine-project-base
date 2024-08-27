@ECHO OFF

SETLOCAL

CALL Vars.bat %1 || EXIT /B 

SET MODE=Editor
SET COOK=NO
IF "%2" == "-standalone" (
    SET MODE=
    SET COOK=YES
)

ECHO Building with Unreal Engine at %UE%

ECHO Project: %UPROJECT_PATH%

SET BUILD_BAT=%UE%\Engine\Build\BatchFiles\Build.bat

SET BUILD_CMD="%BUILD_BAT%" %PROJECT%%MODE% Win64 Development "%UPROJECT_PATH%" -waitmutex -NoHotReload

ECHO Command: %BUILD_CMD%

CALL %BUILD_CMD%

IF "%COOK%" == "YES" (
    CALL Cook.bat %1 || EXIT /B 
)
