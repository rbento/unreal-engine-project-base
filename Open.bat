@echo off

set ROOT_DIR=%~dp0
set ROOT_DIR=%ROOT_DIR:~0,-1%

set PROJECT=%1
set PROJECT_DIR=%ROOT_DIR%\%PROJECT%
set UPROJECT_PATH=%PROJECT_DIR%\%PROJECT%.uproject

set UE5_DIR=C:\Program Files\Epic Games\UE_5.4
set UE5_EDITOR=%UE5_DIR%\Engine\Binaries\Win64\UnrealEditor.exe

start "%UE5_EDITOR%" "%UPROJECT_PATH%" 
