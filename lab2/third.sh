#!/bin/bash
i=1
while [ $i -le 100 ]
do
    j=2
    flag=1
    while [ $j -le $(bc <<< "scale=0; sqrt($i)") ]
    do
        if [ $(( $i % $j )) -eq 0 ]
        then
            flag=0
            break
        else
            j=$(( $j + 1 ))
        fi
    done
    if [ $i -ne 1 -a $flag -eq 1 ]
    then
        echo "$i"
    fi
    i=$(( $i + 1 ))
done
