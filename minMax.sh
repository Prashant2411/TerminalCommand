#!/bin/bash -x

declare -a numberArr

function getNumber () {
	number=$((RANDOM%1000))	
	if [ $number -lt 100 ]
	then
		if [ $number -lt 10 ]
		then
			number=$(( $number * 100 ))
		else
			number=$(( $number * 10 ))
		fi
		echo $number
	else
		echo $number
	fi
}

function getMax () {
	max=0
	max2=0
	for (( i=0;i<10;i++ ))
	do
		if [[ $max -lt "${numberArr[i]}" ]]
		then
			if [ $max2 -lt $max ]
			then
				max2=$max
			fi
				max="${numberArr[i]}"
		elif [[ $max -gt "${numberArr[i]}" && $max2 -lt "${numberArr[i]}" ]]
		then
			max2="${numberArr[i]}"
		fi
	done
	echo $max2
}

function getMin () {
	min=1000
	min2=1001
	for (( i=0;i<10;i++ ))
	do
		if [[ $min -gt "${numberArr[i]}" ]]
      then
         if [ $min2 -gt $min ]
         then
            min2=$min
         fi
            min="${numberArr[i]}"
      elif [[ $min -lt "${numberArr[i]}" && $min2 -gt "${numberArr[i]}" ]]
      then
         min2="${numberArr[i]}"
      fi
   done
	echo $min2
}

function main () {
	for (( i=0;i<10;i++ ))
	do
		numberArr[((i))]=$(getNumber)
		length="${#numberArr[@]}"
	done
	maxValue=$(getMax)
	minValue=$(getMin)
	echo "Second Largest value is: $maxValue"
	echo "Second Smallest value is: $minValue"
	echo ${numberArr[@]}
}

main
