@echo off
REM Set virtual environment directory name
set VENV_DIR=ramnotify

REM Create virtual environment if it doesn't exist
if not exist %VENV_DIR% (
    python -m venv %VENV_DIR%
    echo Virtual environment created.
)

REM Activate the virtual environment
call %VENV_DIR%\Scripts\activate.bat

REM install neccesssary stuff
pip install -r reqirements.txt

REM Deactivate the virtual environment
call %VENV_DIR%\Scripts\deactivate.bat

REM add run.bat to run at login
REM Get the directory of the currently running .bat file
set SCRIPT_DIR=%~dp0
set SCRIPT_PATH=%SCRIPT_DIR%run.bat

REM Get Startup folder path from registry
for /f "tokens=2* delims= " %%a in ('reg query "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v Startup') do set STARTUP_DIR=%%b

REM Create shortcut in Startup folder using PowerShell
powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%STARTUP_DIR%\run.bat.lnk');$s.TargetPath='%SCRIPT_PATH%';$s.Save()"

echo Shortcut for run.bat created in Startup folder. It will run at login.
pause
