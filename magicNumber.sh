#!/bin/bash -x

lowLimit=0
highLimit=100
mid=50

echo "Think of the number between 0-100."

while ( true )
do
	echo "The number is: "
	echo "1. Less then $mid"
	echo "2. Greater then $mid"
	echo "3. Equal to $mid"
	read optionNumber
	case $optionNumber in
	1 )
		highLimit=$mid
		mid=$(( ($mid + $lowLimit) / 2 ));;
	2 )
		lowLimit=$mid
		mid=$(( ($lowLimit + $highLimit) / 2 ));;
	3 )
		echo "Congratulations!!!"
		break;;
	* )
		echo "Enter correct input"
	esac
	echo "Mid $mid High $highLimit Low $lowLimit"
done
