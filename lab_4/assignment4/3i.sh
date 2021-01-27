#!/bin/bash

echo -n "Enter Numbers: "
read -a arr

for ((i=0; i<${#arr[@]}; i++))
do 
	min_idx=$i

	for ((j=$i; j<${#arr[@]}; j++))
	do
		
		if [[ ${arr[$j]} -le ${arr[$min_idx]} ]]; then
			min_idx=$j
		fi
	done

	t=${arr[$i]}
	arr[$i]=${arr[$min_idx]}
	arr[$min_idx]=$t
done

echo ${arr[*]}
