#!/bin/sh

writepath="$1"
writestr="$2"

echo "$writepath"
echo "$writestr"

if [ -z "$writepath" ] || [ -z "$writestr" ]
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

        if [ ! -e "$writepath" ]
        then
                echo "The entered file is not present so create it"
		echo "$writestr" >> $writepath
	else
		echo "write into file"
		echo "$writestr" > $writepath
		
        fi
fi

