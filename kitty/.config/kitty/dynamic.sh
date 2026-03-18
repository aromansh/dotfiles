#!/bin/sh
if [ -f "$HOME/.device" ]; then
  DEVICE=$(cat "$HOME/.device")
  cat "$HOME/.config/kitty/$DEVICE.conf"
fi
