#!/bin/bash

echo "($2) najwiekszych i ($2) najmniejszych plikow w drzewie katalogow ($1)"

find $1 -depth -type f -printf "%s %P\n"| sort -k 1 -n | tee find2.txt | head -n$2 find2.txt && tail -n$2 find2.txt
