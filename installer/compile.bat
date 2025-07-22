@echo off

cd /D "%~dp0"

if not exist "build" mkdir "build"

"tools\makensis.exe" "t7x_installer.nsi"

if %ERRORLEVEL% neq 0 (
    echo.s
    echo Compilation failed!
    echo.
    pause
    exit /b %ERRORLEVEL%
)

echo.
echo Compiled successfully!
echo.
pause
