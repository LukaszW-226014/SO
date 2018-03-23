#!/bin/bash

echo "Skrypt nr 3: Usuwanie wszystkich plików w zadanym katalogu ($1), poza plikami wykonywalnymi, majacymi ustawiony bit dostepu typu 'execute'"

find $1 ! -perm /a+x -type f -delete

printf "\nZrobione\n"
