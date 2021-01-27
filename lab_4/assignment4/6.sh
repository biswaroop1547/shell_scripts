#!/bin/bash

echo -n "Enter Numbers: "
read -a arr

echo -n "Enter Element: "
read x

for i in "${!arr[@]}"; do
   if [[ "${arr[$i]}" = "${x}" ]]; then
       echo "Index of $x is ${i}";
   fi
done
