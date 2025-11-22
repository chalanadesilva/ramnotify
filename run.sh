#!/bin/bash
if [ -d "ramnotify" ]; then
    source ramnotify/bin/activate
fi
python ramnotify.py
