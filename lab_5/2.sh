#!/bin/bash

read -p "Enter the number to find the factorial of : " num

factorial()
{
    if (( $1 <= 1 )); then
        echo 1
    else
        last=$(factorial $(( $1 - 1 )))
        echo $(( $1 * last ))
    fi
}

echo $(factorial $num)
