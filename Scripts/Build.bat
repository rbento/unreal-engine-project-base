@ECHO OFF

SETLOCAL

SET CURRENT_DIR=%~dp0

CALL "%CURRENT_DIR%Vars.bat" %1 || EXIT /B

SET MODE=Editor
SET COOK=NO
IF "%2" == "-standalone" (
    SET MODE=
    SET COOK=YES
)

ECHO Building with Unreal Engine at %UE%

ECHO Project: %UPROJECT_PATH%

SET BUILD_CMD="%UE_BUILD_TOOL_BAT%" %PROJECT%%MODE% Win64 Development "%UPROJECT_PATH%" -waitmutex -NoHotReload

ECHO Command: %BUILD_CMD%

CALL %BUILD_CMD% || EXIT /B 

IF "%COOK%" == "YES" (
    CALL Cook.bat %1 || EXIT /B 
)
