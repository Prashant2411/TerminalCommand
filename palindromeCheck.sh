#!/bin/bash -x

read -p "Enter the number: " firstNumber

function getReverseNumber () {
	reverseNumber=0
	originalNumber=$1
	n=$1
	remainder=0
	while (( n>0 )) 
	do
		remainder=$(( $n% 10 )) 
		reverseNumber=$(( $reverseNumber * 10 + $remainder )) 
		n=$(( $n / 10 )) 
	done
	echo $reverseNumber
}

function main () {
reverseFirstNumber=$( getReverseNumber $firstNumber )

if [[ $firstNumber == $reverseFirstNumber ]]
then
	echo "They are palindrome"
else
	echo "They are not palindrome"
fi
}

main


