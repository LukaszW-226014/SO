#!/bin/bash

dow=$1$2

echo "Wszystkie dowiazania symboliczne z katalogu ($1) wskazujace na plik ($2)"

for var in $(find $1 -type l)
do
	#echo $dow
	#echo $var
	if [ $(readlink $dow) = $(readlink $var) ]
	then
		if [ $dow != $var ]
		then
		echo $var
	fi
	fi
done


