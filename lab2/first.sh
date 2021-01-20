#!/bin/bash
read -p "Enter Year : " year
if [ $(($year % 4)) -eq 0 ]
then
    if [ $(($year % 100)) -eq 0 ]
    then
        if [ $(($year % 400)) -eq 0 ]
        then
            echo "Is a leap year."
        else
            echo "Not a leap year."
        fi
    else
        echo "Is a leap year."
    fi
else
    echo "Not a leap year."
fi
