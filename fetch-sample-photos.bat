@echo off
REM Wrapper to run the PowerShell downloader with bypassed execution policy
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0fetch-sample-photos.ps1"
pause