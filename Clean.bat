@echo off

set ROOT_DIR=%~dp0
set ROOT_DIR=%ROOT_DIR:~0,-1%

set PROJECT=%1
set PROJECT_DIR=%ROOT_DIR%\%PROJECT%

set FOLDERS=.idea .vs Binaries DerivedDataCache Intermediate Saved
(for %%F in (%FOLDERS%) do (
    rd /s /q "%PROJECT_DIR%\%%F"
))

set FILES=.vsconfig %PROJECT%.sln
(for %%F in (%FILES%) do (
    del "%PROJECT_DIR%\%%F"
))

