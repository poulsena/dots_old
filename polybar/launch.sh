#!/usr/bin/bash/env bash

# Terminate already running bar instances
polybar-msg cmd quit
# killall -q polybar

# Launch example bar
echo "---" | tee -a /tmp/polybar1.log
polybar example 2>&1 | tee -a /tmp/polybar1.log & disown

echo "Bar launched..."
