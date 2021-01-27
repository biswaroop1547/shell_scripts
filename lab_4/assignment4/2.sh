#!/bin/bash

echo -n "Enter Numbers: "
read -a arr

for ((x=$((${#arr[@]} - 1)); x>=0; x--))
do
	echo "${arr[$x]}"
done
