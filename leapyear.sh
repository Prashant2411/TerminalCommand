#!/bin/bash -x

function leapyear () {
	if [ `expr $1 % 4` -eq 0 ]
	then
		
		if [ `expr $1 % 100` -eq 0 ]
		then
			if [ `expr $1 % 400` -eq 0 ]
			then
				echo "Leap Year"
			else
			
				echo "Not a Leap Year"
			fi
		else
		
			echo "Leap Year"
		fi
	else
	
		echo "Not a Leap Year"
	fi
}

echo "Enter the year: "
read year

leapyear $year
