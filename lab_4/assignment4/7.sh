#!/bin/bash

echo -n "Enter Numbers: "
read -a arr

printf "%s \0" "${arr[@]}" | sort -uz
