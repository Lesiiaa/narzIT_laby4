#!/bin/bash

#date
if [[ "$1" == "--date" || "$1" == "-d" ]]; then
	echo "Today's date: $(date)"
fi

#logs
if [[ "$1" == "--logs" || "$1" == "-l" ]]; then
	if [[ -z "$2" ]]; then
		number=100
	else
		number=$2
	fi

	for ((i=1; i<=$number; i++)); do
		echo "Log file: $i" > "log$i.txt"
		echo "Made by: $0" >> "log$i.txt"
		echo "Date: $(date)" >> "log$i.txt"
	done
fi

#help
if [[ "$1" == "--help" || "$1" == "-h" ]]; then
echo "Menu of all commands: "
echo "--help, -h 		Display help menu"
echo "--date, -d 		Display today's date"
echo "--logs [x], -l [x]	Creeate x log files. Default is 100."
fi
