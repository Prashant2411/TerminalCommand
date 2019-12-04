#!/bin/bash -x

function randomnum ()
{
	random=$(( RANDOM%100 ))
	if [ $random -lt 10 ]
	then
		randomnum
	else
		echo $random
	fi
}

sum=0
for i in 1 2 3 4 5
do
	random=$(randomnum)
	sum=$(( $sum + $random ))
done
echo "Sum is $sum"
avg=$(( $sum / 5 ))
echo "Avg is $avg"

