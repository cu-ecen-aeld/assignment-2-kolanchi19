#!/bin/bash

filedir="$1"
searchstr="$2"

if [ $# -lt 2 ]
then
	echo "The input parameter is null"
	exit 1
else
	if [ ! -d "$filedir" ]
	then
		echo "The entered directory is not exist"
		exit 1
	fi
fi

num_file=$(ls $filedir | wc -l)

num_mat_string=$(grep -ri $searchstr $filedir | wc -l)

echo "The number of files are $num_file and the number of matching lines are $num_mat_string"

exit 0
