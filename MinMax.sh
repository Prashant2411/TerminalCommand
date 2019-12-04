#!/bin/bash -x

function randomnum ()
{
	random=$(( RANDOM%1000 ))
	if [ $random -lt 100 ]
	then
		randomnum
	else
		echo $random
	fi
}

max=0
min=1000
for i in 1 2 3 4 5
do
	random=$(randomnum)
	if [ $random -gt  $max ]
	then
		max=$random
	fi
	if [ $random -lt $min ]
	then
		min=$random
	fi
done
echo "Max is $max"
echo "Min is $min"

