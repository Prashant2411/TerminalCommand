#!/bin/bash -x

read -p "Enter the day: " day
read -p "Enter the month: " month
month=${month,,}
if [ $month == "march" ]
then
	if [[ $day -gt 19 && $day -lt 32 ]]
	then
		echo 'True'
	else
		echo 'False'
	fi
elif [ $month == "april" ]
then
	if [[ $day -lt 31 && $day -gt 0 ]]
	then
		echo 'True'
	else
		echo 'False'
	fi
elif [ $month == "may" ]
then
        if [[ $day -lt 32 && $day -gt 0 ]]
        then
                echo 'True'
        else
                echo 'False'
        fi
elif [ $month == "june" ]
then
	if [[ $day -lt 21 && $day -gt 0 ]]
	then
		echo 'True'
	else
		echo 'False'
	fi
else
	echo 'False'
fi
