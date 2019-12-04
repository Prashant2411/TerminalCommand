#!/bin/bash -x

function feetToInch ()
{
	conversion=$(( $1 * 12 ))
	echo $conversion 
}

function feetToMeter ()
{
	conversion=`expr "$1 * 0.3048" | bc 
	echo $conversion | bc
}

function inchToFeet ()
{
	conversion=`expr "$1 * 0.083" | bc`
	echo $conversion | bc
}

function meterToFeet ()
{
	conversion=$(( $1 * 3.28 ))
	echo $conversion
}

echo "List of operations:"
echo "1. Feet to Inch"
echo "2. Feet to Meter"
echo "3. Inch to Feet"
echo "4. Meter to Feet"
read -p "Enter the operation number to be performed: " operationNumber
read -p "Enter the value to be converted: " numberToBeConverted

case $operationNumber in
	1 )
		conversion=$(feetToInch $numberToBeConverted);;
	2 )
		conversion=$(feetToMeter $numberToBeConverted) | bc;;
	3 )
		conversion=$(inchToFeet $numberToBeConverted);;
	4 )
		conversion=$(meterToFeet $numberToBeConverted);;
	* )
		conversion="Enter correct option."
esac

echo $conversion
