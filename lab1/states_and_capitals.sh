#!/bin/sh
# 1. Create a file named "states.txt" and enter names of 10 states. 
# 2. Create an empty file named "capitals.txt".
# 3. Add capitals of each state in the capitals.txt file.
# 4. Display the first 3 states in the file.
# 5. Display the first word of each state.
# 6. Display the capitals containing the letter "i"

echo "Arunachal Pradesh
Assam
Bihar
Chhattisgarh
Goa
Gujarat
Haryana
Himachal Pradesh
Mizoram
Jharkhand" > states.txt
echo "1. States.txt created"

touch capitals.txt
echo "2. Capitals.txt created"

echo "Itanagar
Guwahati
Patna
Raipur
Panaji
Gandhinagar
Chandigarh
Shimla
Aizwal
Ranchi" >> capitals.txt
echo "3. Capitals inserted into capitals.txt"

echo "4. First 3 states in states.txt are :"
sed -n 1,3p states.txt

echo "5. First word of each state in states.txt are :"
sed "s/\s.*//g; /^$/ d" states.txt

echo "6. Capitals containing the letter 'i' :"
sed "/i/!s/.*//; /^$/ d" capitals.txt

echo "\nDone, exiting!.."

