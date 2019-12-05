#!/bin/bash -x

echo "Below are the functions:"
echo "1. C to F"
echo "2. F to C"
read -p "Enter option number: " optionNumber

function celToFareh ()
{
	#if [ $1 
	val1=$( echo $1 * 1.8 + 32 | bc -l)
	echo $val1 | bc -l
}

#function 

convertedTemp=$( celToFareh 32 )
echo "$convertedTemp"

