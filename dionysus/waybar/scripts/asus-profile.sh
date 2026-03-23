#!/bin/bash
# ── asus-profile.sh ───────────────────────────────────────  
# Description: Display current ASUS power profile with color
# Usage: Called by Waybar `custom/asus-profile`
# Dependencies: asusctl, awk
# ──────────────────────────────────────────────────────────  

profile=$(powerprofilesctl get)

case "$profile" in
  performance)
    text="RAZGON"
    fg="#bf616a"
    ;;
  balanced)
    text="STABILIZATION"
    fg="#fab387"
    ;;
  power-saver)
    text="REACTOR SLEEP"
    fg="#56b6c2"
    ;;
  *)
    text="LENOVO ??"
    fg="#ffffff"
    ;;
esac

echo "<span foreground='$fg'>$text</span>"

