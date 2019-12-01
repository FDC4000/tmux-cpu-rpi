#!/usr/bin/env bash

startPlace='${pwd}'
cd ~/.tmux/plugins/tmux-cpu/scripts/
mv cpu_temp.sh cpu_temp.sh.orig
cp $startPlace/cpu_temp.sh ./cpu_temp.sh
chmod +x cpu_temp.sh
cp $startPlace/is_pi_plattform.sh ./is_pi_plattform.sh
chmod +x is_pi_plattform.sh