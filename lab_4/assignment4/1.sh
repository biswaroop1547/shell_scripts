#!/bin/bash

echo -n "Enter Numbers: "
read -a arr

for ((x=0; x<${#arr[@]}; x++))
do
	echo "${arr[$x]}"
done
