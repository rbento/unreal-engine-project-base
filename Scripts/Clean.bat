@ECHO OFF

IF "%1" == "" (
    ECHO ABORTED: Unreal project name name was not provided
    ECHO EXAMPLE: Clean MyProject
    EXIT /B
)

SET ROOT_DIR=%~dp0
SET ROOT_DIR=%ROOT_DIR:~0,-1%

SET PROJECT=%1
SET PROJECT_DIR=%ROOT_DIR%\%PROJECT%

SET FOLDERS=.idea .vs Binaries DerivedDataCache Intermediate Saved
(FOR %%F IN (%FOLDERS%) DO (
    rd /s /q "%PROJECT_DIR%\%%F"
))

SET FILES=.vsconfig %PROJECT%.sln
(FOR %%F IN (%FILES%) DO (
    del "%PROJECT_DIR%\%%F"
))

