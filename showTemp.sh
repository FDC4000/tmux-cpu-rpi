#!/bin/bash
# script for tmux-cpu to show temp on RPi too

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#source "$CURRENT_DIR/helpers.sh"

determine_platform() {
#	grep Hardware /proc/cpuinfo
  sh ./check_plattform.sh
}

print_cpu_temp() {
	if command_exists "sensors"; then
		sensors | sed '/^[^Package]/d' | sed '/^\s*$/d' | tail -n 1 | awk '{a=$4} END {printf("%5.0fÂºC", a)}'
	else
		echo "no sensors found"
	fi
}

print_rpi_temp() {
  cpuTemp0=$(cat /sys/class/thermal/thermal_zone0/temp)
  cpuTemp1=$(($cpuTemp0/1000))
  cpuTemp2=$(($cpuTemp1/100))
  cpuTempM=$(($cpuTemp2 % $cpuTemp1))
  CPU=$cpuTemp1"."$cpuTempM"'C"
  echo $CPU
}

main() {
	plattform_is_pi=determine_platform
  if [ $plattform_is_pi ]; then
		print_rpi_temp
	else
		print_cpu_temp
	fi
}
main
