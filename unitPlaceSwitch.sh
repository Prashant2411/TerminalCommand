#!/bin/bash

read -p "Enter the number: " number

case $number in
	1 )
		digit="Unit";;
	10 )
		digit="Ten";;
	100 )
		digit="Hundred";;
	1000 )
		digit="Thousand";;
	* )
		digit="Enter a valid input.";;
esac
echo $digit
