#!/bin/bash

num=$1

while [ $num -ne 0 ]; do
    echo -n "$(($num%10))";
    num=$(($num/10))
done
echo ""
