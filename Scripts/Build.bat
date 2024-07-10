@echo off

set ROOT_DIR=%~dp0
set ROOT_DIR=%ROOT_DIR:~0,-1%

set PROJECT=%1
set PROJECT_DIR=%ROOT_DIR%\%PROJECT%
set UPROJECT_PATH=%PROJECT_DIR%\%PROJECT%.uproject

set UE5_DIR=C:\Program Files\Epic Games\UE_5.4
set BUILD_BAT=%UE5_DIR%\Engine\Build\BatchFiles\Build.bat

call "%BUILD_BAT%" %PROJECT%Editor Win64 Development "%UPROJECT_PATH%" -waitmutex -NoHotReload
