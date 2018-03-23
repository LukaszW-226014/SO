#!/bin/bash

dow=$1$2

echo "Wszystkie dowiazania symboliczne w  katalogu ($1) (drzewie) wskazujace na plik ($2)"

for var in $(find $1 -depth -type l)
do
	#echo $var
        if [ $(realpath $dow) = $(realpath $var) ]
        then
	        if [ $dow != $var ]
		then
		        echo $var
		fi
	fi
done		
