@echo off

if not exist "build" mkdir "build"
"tools\makensis.exe" "t7x_Installer.nsi"