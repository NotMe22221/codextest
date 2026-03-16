@echo off
REM Wrapper to create site.zip using PowerShell (bypasses execution policy)
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0create-zip.ps1"
echo.
echo ZIP created. Press any key to continue...
pause >nul