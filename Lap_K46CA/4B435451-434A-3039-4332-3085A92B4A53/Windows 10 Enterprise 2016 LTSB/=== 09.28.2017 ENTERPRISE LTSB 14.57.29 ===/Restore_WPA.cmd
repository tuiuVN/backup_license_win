@echo off
pushd "%~dp0"
cd /d "%~dp0"

REG SAVE HKLM\SYSTEM "%TEMP%\SYSTEM.HIV" /y
REG RESTORE HKLM\SYSTEM "%TEMP%\SYSTEM.HIV"
REG RESTORE "HKLM\SYSTEM\WPA" "WPA.HIV"
timeout 3
del "%TEMP%\SYSTEM.HIV"

shutdown.exe /r /f /t 0
