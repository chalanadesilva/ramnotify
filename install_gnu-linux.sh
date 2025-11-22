#!/bin/bash

# make run.sh run at login
AUTOSTART_DIR="$HOME/.config/autostart"
mkdir -p "$AUTOSTART_DIR"

DESKTOP_FILE="$AUTOSTART_DIR/run_script.desktop"
SCRIPT_PATH="$PWD/run.sh"

chmod +x $SCRIPT_PATH
cat > "$DESKTOP_FILE" << EOL
[Desktop Entry]
Hidden=false
TryExec=$SCRIPT_PATH
Exec=$SCRIPT_PATH
EOL

chmod +x $DESKTOP_FILE
# make virtual enviroment
VENV_DIR="ramnotify"
python3 -m venv $VENV_DIR
source $VENV_DIR/bin/activate

# install necceserry stuff
pip3 install -r reqirements.txt
deactivate
