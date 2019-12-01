#!/usr/bin/env bash

mv ~/.tmux/plugins/tmux-cpu/scripts/cpu_temp.sh ~/.tmux/plugins/tmux-cpu/scripts/cpu_temp.sh.orig
cp cpu_temp.sh ~/.tmux/plugins/tmux-cpu/scripts/cpu_temp.sh
cp is_pi_plattform.sh ~/.tmux/plugins/tmux-cpu/scripts/
chmod +x ~/.tmux/plugins/tmux-cpu/scripts/cpu_temp.sh
