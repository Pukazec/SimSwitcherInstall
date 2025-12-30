echo off
setlocal

REM Get folder of this BAT file
set TASK_DIR=%~dp0
set TASK_DIR=%TASK_DIR:~0,-1%
set TASK_NAME=SimSwitcherSerialPort_OnLogon

schtasks /Create ^
	/SC ONLOGON ^
	/TN "%TASK_NAME%" ^
	/TR "\"%TASK_DIR%\SimSwitcher.SerialPort.exe\"" ^
	/RL HIGHEST ^
	/F

echo Scheduled task "%TASK_NAME%" installed.
pause
