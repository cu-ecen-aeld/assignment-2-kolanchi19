#!/bin/bash

<<<<<<< HEAD
filedir="$1"
searchstr="$2"


if [ $# -lt 2 ]
=======
a="$1"
b="$2"

echo "$a"
echo "$b"

if [ -z "$a" ] || [ -z "$b" ] 
>>>>>>> a9ed0b1b9a9aabc08c02eaba8756c33da75a9638
then
	echo "The input parameter is null"
	exit 1
else
<<<<<<< HEAD
	if [ ! -d "$filedir" ]
=======
	if [ ! -d "$a" ]
>>>>>>> a9ed0b1b9a9aabc08c02eaba8756c33da75a9638
	then
		echo "The entered directory is not exist"
		exit 1
	fi
<<<<<<< HEAD
fi

num_file=$(ls $filedir | wc -l)

num_mat_string=$(grep -ri $searchstr $filedir | wc -l)

=======
	echo "The input parameter are valid"
fi

num_file=$(grep -rl "$b" "$a" | wc -l)

num_mat_string=$(grep -ri "$b" "$a" | wc -l)

#echo "The $b string present in $num_file file and the total number of string $num_mat_string in $a"
>>>>>>> a9ed0b1b9a9aabc08c02eaba8756c33da75a9638
echo "The number of files are $num_file and the number of matching lines are $num_mat_string"

exit 0
