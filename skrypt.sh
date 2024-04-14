#!/bin/bash

#date
if [[ "$1" == "--date" ]]; then
	echo "Today's date: $(date)"
fi

#logs
if [[ "$1" == "--logs" ]]; then
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
