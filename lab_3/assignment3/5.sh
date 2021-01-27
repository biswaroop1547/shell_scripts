#!/bin/bash

marks=$1

if [[ $marks -le 100 && $marks -gt 90 ]]; then
    echo "Grade O"
elif [[ $marks -le 90 && $marks -gt 80 ]]; then
    echo "Grade E"
elif [[ $marks -le 80 && $marks -gt 70 ]]; then
    echo "Grade A"
elif [[ $marks -le 70 && $marks -gt 60 ]]; then
    echo "Grade B"
elif [[ $marks -le 60 && $marks -gt 50 ]]; then
    echo "Grade C"
elif [[ $marks -le 50 && $marks -gt 40 ]]; then
    echo "Grade D"
else
    echo "Grade F"
fi


