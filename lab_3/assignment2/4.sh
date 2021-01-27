basic=$1
ta=$(echo "0.3 * $basic" | bc)
hra=$(echo "0.07 * $basic" | bc)
gross=$(echo "$basic + $hra + $ta" | bc)

echo "Gross Pay: $gross"
