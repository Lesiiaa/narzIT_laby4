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
echo "--help, -h 		Display help menu."
echo "--date, -d 		Display today's date."
echo "--logs [x], -l		Create x log files. Default is 100."
echo "--init, -i		Clone repository and add to PATH."
echo "--error [x], -e		Create x error files. Default is 100."
fi


#init
if [[ "$1" == "--init" || "$1" == "-i" ]]; then
	git clone https://github.com/Lesiiaa/narzIT_laby4 "$PWD/lnarzIT_laby4_clone"
	PATH=$PATH:$PWD/lab_clone
fi

#--error x
if [[ "$1" == "--error" || "$1" == "-e" ]]; then
        if [[ -z "$2" ]]; then
                number=100
        else
                number=$2
        fi

	mkdir -p errorx

        for ((i=1; i<=$number; i++)); do
                echo "Error file: $i" > "errorx/error$i.txt"
                echo "Made by: $0" >> "errorx/error$i.txt"
                echo "Date: $(date)" >> "errorx/error$i.txt"
        done
fi

