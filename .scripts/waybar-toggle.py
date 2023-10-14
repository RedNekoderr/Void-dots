#!/usr/bin/python
import os

if os.system("pgrep waybar"):
    os.system("exec waybar")
else:
    os.system("pkill waybar")
