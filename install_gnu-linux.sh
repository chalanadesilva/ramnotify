#!/bin/bash

# make run.sh run at login
AUTOSTART_DIR="$HOME/.config/autostart"
mkdir -p "$AUTOSTART_DIR"

DESKTOP_FILE="$AUTOSTART_DIR/run_script.desktop"
SCRIPT_PATH="$PWD/run.sh"

chmod +x $SCRIPT_PATH
cat > "$DESKTOP_FILE" << EOL
[Desktop Entry]
Encoding=UTF-8
Version=0.9.4
Type=Application
Name=start ramnotify
Comment=
Exec=$SCRIPT_PATH
RunHook=0
StartupNotify=false
Terminal=false
Hidden=false

EOL

chmod +x $DESKTOP_FILE
# make virtual enviroment
VENV_DIR="ramnotify"
python3 -m venv $VENV_DIR
source $VENV_DIR/bin/activate

# install necceserry stuff
pip3 install -r reqirements.txt
deactivate
