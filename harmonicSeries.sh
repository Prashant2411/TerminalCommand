#!/bin/bash -x

read -p "Enter the number " numb
	sum=0.0
	for (( i=1;i<=$numb;i++ ))
	do
		a=$(echo 1 / $i | bc -l)
		sum=$(echo $sum + $a | bc -l)
	done
	echo "Sum is $sum"
