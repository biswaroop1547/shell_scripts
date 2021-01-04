#!/bin/sh

#shell script to find the absentees list from the ZOOM chat file.The ZOOM chat file(chat.txt) and the original student list file(g2) should be in the same directory as this script. Displays the absentees student role no in ascending order along with serial no and stores the absent roll no.s in a file named absentees.


cp g2 absentees # copies the real student list in the absentees.

grep -o "[0-9]\{7\}\s*$" chat.txt | sed "s/\s//g" | # grep extracts out the present roll no.s only and sed removes any trailing whitespace.
while read f
do
	sed -i "s/${f}//; /^$/ d" absentees # sed removes all the present students from the absentees file.

done

cat -n absentees


#diff --new-line-format="" --unchanged-line-format="" <(sort g2) <(grep -o "[0-9]\{7\}\s*$" chat.txt | sed "s/\s//g" | sort -u)

# one liner for this task.