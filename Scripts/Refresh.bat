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
    ECHO EXAMPLE: Refresh MyProject
    EXIT /B
)

SET ROOTDIR=%~dp0
SET ROOTDIR=%ROOTDIR:~0,-1%

SET PROJECT=%1

SET CLEAN_BAT=%ROOTDIR%\Clean.bat
SET BUILD_BAT=%ROOTDIR%\Build.bat
SET OPEN_BAT=%ROOTDIR%\Open.bat

CALL "%CLEAN_BAT%" %PROJECT%
CALL "%BUILD_BAT%" %PROJECT%
CALL "%OPEN_BAT%" %PROJECT%