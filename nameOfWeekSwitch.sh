#!/bin/bash -x

read -p "Enter the number between 1-7: " number

case $number in
	1 )
		weekDay=Sunday;;
	2 )
		weekDay=Monday;;
	3 )
		weekDay=Tuseday;;
	4 )
		weekDay=Wednesday;;
	5 )
		weekDay=Thursday;;
	6 )
		weekDay=Friday;;
	7 )
		weekDay=Saturday;;
	* )
		weekDay=Enter number between 1-7
esac
echo $weekDay
