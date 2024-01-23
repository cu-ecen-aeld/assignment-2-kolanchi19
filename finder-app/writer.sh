#!/bin/sh

writepath="$1"
writestr="$2"

if [ $# -lt 2 ]
then
        echo "The input parameter is null"
        exit 1
else
	writedir=$(dirname "$writepath")
	echo $writedir
	mkdir -p "$writedir"

	if [ -d "$writedir" ]
	then
		echo "$writedir exists"
	else
		echo "$writedir is not exists"
		exit 1
	fi

	echo "$writestr" > $writepath
fi

