@ECHO OFF

SETLOCAL

SET CURRENT_DIR=%~dp0

CALL "%CURRENT_DIR%Vars.bat" %1 || EXIT /B 

ECHO Cleaning %UPROJECT_PATH%

SET FOLDERS=.idea .vs Binaries DerivedDataCache Intermediate Saved
(FOR %%F IN (%FOLDERS%) DO (
    rd /s /q "%PROJECT_DIR%\%%F"
))

SET FILES=.vsconfig %PROJECT%.sln
(FOR %%F IN (%FILES%) DO (
    del "%PROJECT_DIR%\%%F"
))

