#!/bin/bash -x

startAmt=100

while (( $startAmt>0 && $startAmt<200  ))
do
	result=$(( RANDOM%2 ))
	if [ $result -eq 0 ]
	then
		startAmt=$(( $startAmt + 1 ))
		wins=$(( $wins + 1 ))
	else
		startAmt=$(( $startAmt - 1 ))
		loss=$(( $loss + 1 ))
	fi
done
echo "$wins $loss"
