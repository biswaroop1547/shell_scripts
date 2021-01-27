#!/bin/bash

n=$1

val=0
power=0

while [ $n -ne 0 ]
    do
        r=`expr $n % 10`
        if [[ $r -eq 1 ]]; then
            val=$((2**$power + $val))
        fi

        power=$(($power+1))
        n=$(($n/10))
    done

echo "$val"
