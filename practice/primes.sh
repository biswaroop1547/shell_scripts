#!/bin/bash

read -p "Enter the lower bound " start_var
read -p "Enter the upper bound " end_var

for (( i=$start_var; i<=$end_var; i++ )) 
do
	if [ $i -eq 0 ] || [ $i -eq 1 ]
	then
		continue
	fi

	flag=1

	for (( j=2; j<=$(bc <<< "scale=0; $i / 2"); j++))
	do
		if [ $(($i % $j)) -eq 0 ]
		then
			flag=0
			break
		fi
	done

	if [ $flag -eq 1 ]
	then
		echo "$i"
	fi
done
