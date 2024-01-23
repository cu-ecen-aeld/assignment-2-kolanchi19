#!/bin/bash

a="$1"
b="$2"

echo "$a"
echo "$b"

if [ -z "$a" ] || [ -z "$b" ] 
then
	echo "The input parameter is null"
	exit 1
else
	if [ ! -d "$a" ]
	then
		echo "The entered directory is not exist"
		exit 1
	fi
	echo "The input parameter are valid"
fi

num_file=$(grep -rl "$b" "$a" | wc -l)

num_mat_string=$(grep -ri "$b" "$a" | wc -l)

#echo "The $b string present in $num_file file and the total number of string $num_mat_string in $a"
echo "The number of files are $num_file and the number of matching lines are $num_mat_string"

exit 0
