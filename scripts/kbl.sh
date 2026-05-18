#!/usr/bin/env bash

layout=$(hyprctl devices -j | jq -r '.keyboards[] | select(.main == true) | first(.active_keymap)')
notify-send -r 1 "Keyboard Layout" "Switched to: $layout" -t 1500
