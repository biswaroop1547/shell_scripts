#!/bin/bash
read -p "Enter a number : " num
rev=0
while [ $num -gt 0 ]
do
    rev=$(( $rev * 10 + $(( $num % 10 )) ))
    num=$(( $num / 10 ))
done
echo "Number reversed is $rev"
