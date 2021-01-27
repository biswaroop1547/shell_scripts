#!/bin/bash

if [[ $1 -ge $2 && $1 -ge $3 ]]; then
    echo "$1 is the greatest"
elif [[ $2 -ge $1 && $2 -ge $3 ]]; then
    echo "$2 is the greatest"
else
    echo "$3 is the greatest"
fi
