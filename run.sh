#!/bin/bash
cd $HOME/Documents/ramnotify-main/
if [ -d "ramnotify" ]; then
    source ramnotify/bin/activate
fi
python3 ramnotify.py
