#!/bin/bash -x

function factorial ()
{
	fact=1
	for (( i=1;i<=$1;i++ ))
	do
		fact=$(( $fact*$i ))
	done
	echo $fact
}

read -p "Find factorial of: " number
fact=$(factorial number)
echo $fact
