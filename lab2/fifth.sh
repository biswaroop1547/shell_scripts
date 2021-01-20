#!/bin/bash
read -p "Enter a number in binary form : " bin
dec=0
i=0
while [ $bin -gt 0 ]
do
    dec=$(( $dec + ( ( $bin % 10 ) * ( `echo "2^$i" | bc` ) ) ))
    bin=$(( $bin / 10 ))
    i=$(( $i + 1 ))
done
echo "Decimal equivalent : $dec"
