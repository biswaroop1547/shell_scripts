#!/bin/bash
# display prime from 1 to 100

check_prime() {
    for((i=2; i<$1; i++)); do
        if [[ `expr $1 % $i` -eq 0 ]]; then
            return 1
        fi
    done

    return 0
}

for (( number=1; number<100; number++ ))
do
    if check_prime $number; then
        echo $number
    fi
done
