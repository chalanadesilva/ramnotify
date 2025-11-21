# RAM Notify Installation Instructions

## Prerequisites
- Python 3 must be installed on your system. You can check with:
  - Windows: python --version
  - GNU/Linux or Mac: python3 --version

## Download the Repository
Run the following command in your terminal to download the repository:
curl -L https://github.com/chalanadesilva/ramnotify/archive/main.tar.gz | tar xz
This will create a directory named ramnotify-main. Enter it:
cd ramnotify-main

## Install Dependencies
It is recommended to use a virtual environment:
- Create the environment:
  - Windows: python -m venv venv
  - GNU/Linux or Mac: python3 -m venv venv
- Activate the environment:
  - Windows: venv\Scripts\activate
  - GNU/Linux or Mac: source venv/bin/activate
- Install dependencies from requirements.txt:
  pip install -r requirements.txt

## Make Scripts Executable
On GNU/Linux or Mac, make the shell script executable:
chmod +x run.sh

## Run the App
- GNU/Linux or Mac: ./run.sh
- Windows: Double-click run.bat or run it from the command prompt.

## Add Script to Run at Login
### GNU/Linux
- Create a .desktop file in ~/.config/autostart/ with the following content:
[Desktop Entry]
Type=Application
Exec=/full/path/to/run.sh
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name=RAM Notify
Comment=Start RAM Notify at login

### Mac
- Open System Settings > Users & Groups > Login Items.
- Add run.sh (or a script/workflow that runs it) to the login items.

### Windows
- Press Win + R, type shell:startup, and press Enter.
- Place a shortcut to run.bat in the folder that opens.
