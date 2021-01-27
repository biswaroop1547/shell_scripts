#!/bin/bash
echo "Enter 5 elements : "
i=0
while [ $i -lt 5 ] 
do 
    read arr[$i] 
    i=$(($i + 1)) 
done

echo "Array elements : "

for element in ${arr[@]}
do
    echo "$element"
done
