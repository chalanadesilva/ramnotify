#!/bin/bash

# make run.sh run on login
SCRIPT_PATH="$PWD/run.sh"
chmod +x "$SCRIPT_PATH"
osascript -e "tell application \"System Events\" to make login item at end with properties {path:\"$SCRIPT_PATH\", hidden:false}"

# make virtual enviroment
VENV_DIR="ramnotify"
python3 -m venv $VENV_DIR
source $VENV_DIR/bin/activate

# install necceserry stuff
pip3 install -r reqirements.txt
deactivate
