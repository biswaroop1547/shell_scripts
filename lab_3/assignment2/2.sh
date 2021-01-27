a=$1
b=$2

a=$((a+b))
b=$((a-b))
a=$((a-b))

echo "$1 and $2 => $a and $b"
