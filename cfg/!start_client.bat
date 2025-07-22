@echo off

set ConfigFile="config.cfg"
set ModFolderName=

set game_exe=t7x.exe

cd /D "%~dp0"
start /b /abovenormal %game_exe% -launch +set fs_game %ModFolderName% +exec %ConfigFile%
