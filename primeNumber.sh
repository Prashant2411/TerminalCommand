#!/bin/bash -x

function isPrimeNumber ()
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

function isPalindrome () {
	reverseNumber=0
	originalNumber=$1
	n=$1
	remainder=0
	while (( n>0 )) 
	do
		remainder=$(( $n % 10 )) 
		reverseNumber=$(( $reverseNumber * 10 + $remainder ))
		n=$(( n / 10 )) 
	done
	echo $reverseNumber
}

function main () {
read -p "Enter the number: " numb
isPrime=$(isPrimeNumber $numb)
echo "$numb is Prime..? $isPrime"
if [ $isPrime == "True" ]
then
reverseNumber=$(isPalindrome $numb)
isPrime=$(isPrimeNumber $reverseNumber)
echo "$reverseNumber palindrome number is Prime..? $isPrime"
fi
}

main
