#!/bin/sh

writepath="$1"
writestr="$2"

<<<<<<< HEAD
if [ $# -lt 2 ]
=======
echo "$writepath"
echo "$writestr"

if [ -z "$writepath" ] || [ -z "$writestr" ]
>>>>>>> a9ed0b1b9a9aabc08c02eaba8756c33da75a9638
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

<<<<<<< HEAD
	echo "$writestr" > $writepath
=======
        if [ ! -e "$writepath" ]
        then
                echo "The entered file is not present so create it"
		echo "$writestr" >> $writepath
	else
		echo "write into file"
		echo "$writestr" > $writepath
		
        fi
>>>>>>> a9ed0b1b9a9aabc08c02eaba8756c33da75a9638
fi

