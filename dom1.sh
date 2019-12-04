#!/bin/bash -x

read -p "Enter the day: " day
read -p "Enter the month: " month
month=${month,,}
if [[ $month == "march" && $day -gt 19 && $day -lt 32 ]] || [[ $month == "april" && $day -lt 31 && $day -gt 0 ]] || [[ $month == "may" && $day -lt 32 && $day -gt 0 ]] || [[ $month == "june" && $day -lt 21 && $day -gt 0 ]]
then
	echo 'True'
else
	echo 'False'
fi
