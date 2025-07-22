@echo off

set ConfigFile="config.cfg"
set ModFolderName=

set game_exe=iw7-mod.exe

cd /D "%~dp0"
start /B /wait /abovenormal %game_exe% -launch -nointro -nosteam +set fs_game %ModFolderName% +exec %ConfigFile%
