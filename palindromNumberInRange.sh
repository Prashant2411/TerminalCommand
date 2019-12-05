#!/bin/bash -x

declare -a number
function isPalindrome () {
	reverseNumber=0
	originalNumber=$1
	n=$1
	remainder=0
	while (( n>0 )) 
	do
		remainder=$(( $n% 10 )) 
		reverseNumber=$(( $reverseNumber * 10 + $remainder )) 
		n=$(( n / 10 )) 
	done
	if [ $reverseNumber -eq $originalNumber ]
	then
		isPalind="True"
	else
		isPalind="False"
	fi
	echo $isPalind
}

function main () {
	for (( i=10;i<100;i++ ))
	do
		isPalind=$(isPalindrome $i)
		if [ $isPalind == "True" ]
		then
			number[((counter++))]=$i
		fi
	done
	echo ${number[@]}
}

main

