#!/bin/bash -x

function primeNumber ()
{
	for (( i=2;i<$1;i++ ))
	do
		modResult=$(( $1%$i ))
		if [[ $modResult -eq 0 ]]
		then
			isPrime="False"
			break
		else
			isPrime="True"
		fi
	done
	echo $isPrime
}

read -p "Enter the number of entries " noOfEntries
for (( i=0;i<$noOfEntries;i++ ))
do
read -p "Enter the number: " numb
isPrime=$(primeNumber numb)
echo "$numb is Prime..? $isPrime"
done
