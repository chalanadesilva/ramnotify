#!/bin/bash

# make run.sh run at login
AUTOSTART_DIR="$HOME/.config/autostart"
mkdir -p "$AUTOSTART_DIR"

DESKTOP_FILE="$AUTOSTART_DIR/run_script.desktop"
SCRIPT_PATH="$HOME/$PWD/run.sh"

cat > "$DESKTOP_FILE" << EOL
[Desktop Entry]
Type=Application
Exec=$SCRIPT_PATH
Hidden=true
NoDisplay=true
X-GNOME-Autostart-enabled=true
Name=Run Ramnotify
Comment=Run run.sh on graphical login
EOL

# make virtual enviroment
VENV_DIR="ramnotify"
python3 -m venv $VENV_DIR
source $VENV_DIR/bin/activate

# install necceserry stuff
pip3 install -r reqirements.txt
deactivate