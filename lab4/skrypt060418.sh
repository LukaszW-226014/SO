#!/bin/bash

echo "Dla pliku: ($1) przedstawia statystyke tekstu ze wzgledu na: daty, adresy email, liczby 4-9 cyfrowe"

awk '{ for(i=1; i<=NF; i++)\
       	{ if ($i= /*@*/) {emails[$i]++;};\
	  if ($i= /[0-9][0-9]-[0-9][0-9]-[0-9][0-9][0-9][0-9]/) {dates[$i]++;};\
	  if ($i= /^[0-9]+$/) {numbers[$i]++;} }}\
   END { for(i in emails) {printf("Emails: %d\n",  emails[i]);}\
         for(i in dates) {printf("Dates: %d\n",  dates[i]);}\
	 for(i in numbers) {printf("Numbers: %d\n",  numbers[i]);}}' $1
