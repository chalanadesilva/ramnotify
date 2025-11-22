@echo off
REM Activate the virtual environment if it exists
IF EXIST "venv\Scripts\activate.bat" (
    call venv\Scripts\activate.bat
)
REM Run your script (replace myscript.py with your actual script name)
python myscript.py
