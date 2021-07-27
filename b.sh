#!/bin/bash

#random_text_$NUM.txt #random characters 1000

for (( NUM=1; NUM <= 10; NUM++ ))
do
head -c 10000 /dev/urandom | tr -dc 'a-zA-Z' | fold -w 1000 | head -n 1 > random_text_$NUM.txt

exit