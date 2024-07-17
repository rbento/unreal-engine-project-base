@echo off

set ROOTDIR=%~dp0
set ROOTDIR=%ROOTDIR:~0,-1%

set PROJECT=%1

set CLEAN_BAT=%ROOTDIR%\Clean.bat
set BUILD_BAT=%ROOTDIR%\Build.bat
set OPEN_BAT=%ROOTDIR%\Open.bat

call "%CLEAN_BAT%" %PROJECT%
call "%BUILD_BAT%" %PROJECT%
call "%OPEN_BAT%" %PROJECT%
