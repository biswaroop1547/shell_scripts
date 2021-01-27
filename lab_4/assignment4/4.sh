#!/bin/bash

echo -n "Enter Numbers: "
read -a arr

echo -n "Enter Element: "
read x

echo -n "Enter Index: "
read ix 


for (( i=$((${#arr[@]} - 1)); i>$(($ix-1)); i-- ))
do
	arr[$(($i+1))]=${arr[$i]}
done

arr[$ix]=$x
echo "${arr[*]}"
