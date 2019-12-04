#!/bin/bash -x

read -p "Enter the digit: " number

case $number in
	0 )
		wordOfNumber=Zero;;
	1 )
		wordOfNumber=One;;
	2 )
		wordOfNumber=Two;;
	3 )
		wordOfNumber=Three;;
	4 )
		wordOfNumber=Four;;
	5 )
		wordOfNumber=Five;;
	6 )
		wordOfNumber=Six;;
	7 )
		wordOfNumber=Seven;;
	8 )
		wordOfNumber=Eight;;
	9 )
		wordOfNumber=Nine;;
	* )
		wordOfNumber="Enter number less then 10"
esac
echo $wordOfNumber
