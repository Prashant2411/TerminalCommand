s#!/bin/bash -x

function randomnum ()
{
	random=$(( RANDOM%6 ))
	random=$(( %random + 1 ))
	return random
}

sum=0
for i in 1 2
do
	random=randomnum 1
	sum=$(( $sum + random ))
done
echo $sum

