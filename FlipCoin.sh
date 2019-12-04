#!/bin/bash -x

i=0
head=0
tail=0
while (( $head < 11 && $tail < 11 ))
do
	flipSide=$(( RANDOM%2 ))
	if [ $flipSide -eq 0 ]
	then
		head=$(( $head + 1 ))
	else
		tail=$(( $tail + 1 ))
	fi
	i=$(( $i + 1 ))
done
