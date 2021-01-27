#!/bin/bash

echo -n "Enter Numbers: "
read -a arr

echo -n "Enter Element to Delete: "
read x

arr=("${arr[@]/$x}")

echo "${arr[*]}"
