#!/bin/bash -x

declare -A diceNumbArr

count1=0
count2=0
count3=0
count4=0
count5=0
count6=0

function getDiceNumb () {
	diceNumb=$((RANDOM%6))
	diceNumb=$(( $diceNumb + 1 ))
	echo $diceNumb
}

function getMaxTime () {
	max=0
	maxIndex=0
	for (( i=1;i<7;i++ ))
	do
		if [ $max -lt "${diceNumbArr[((Dice$i))]}" ]
		then
			max="${diceNumbArr[((Dice$i))]}"
			maxIndex=$i
		fi
	done
	echo $maxIndex
}

function getMinTime () {
	min=7
	minIndex=0
	for (( i=1;i<7;i++ ))
	do
		if [ $min -gt "${diceNumbArr[((Dice$i))]}" ]
		then
			min="${diceNumbArr[((Dice$i))]}"
			minIndex=$i
		fi
	done
	echo $minIndex
}

function main () {
	while [[ $count1 -lt 10 && $count2 -lt 10 && $count3 -lt 10 && $count4 -lt 10 && $count5 -lt 10 && $count6 -lt 10 ]]
	do
	diceNumb=$(getDiceNumb)
	case $diceNumb in
		1 )
			count1=$(( $count1 + 1 ))
			diceNumbArr[((Dice$diceNumb))]=$count1;;
		2 )
			count2=$(( $count2 + 1 ))
			diceNumbArr[((Dice$diceNumb))]=$count2;;
		3 )
         count3=$(( $count3 + 1 ))
         diceNumbArr[((Dice$diceNumb))]=$count3;;
		4 )
         count4=$(( $count4 + 1 ))
         diceNumbArr[((Dice$diceNumb))]=$count4;;
		5 )
         count5=$(( $count5 + 1 ))
         diceNumbArr[((Dice$diceNumb))]=$count5;;
		6 )
         count6=$(( $count6 + 1 ))
         diceNumbArr[((Dice$diceNumb))]=$count6;;
	esac
	done
	echo "$count1 $count2 $count3 $count4 $count5 $count6"
	for i in ${!diceNumbArr[@]}
	do
		echo "$i ${diceNumbArr[$i]}"
	done | sort -k1 -n
	max=$(getMaxTime)
	echo "Maximum is Dice$max : ${diceNumbArr[((Dice$max))]}"
	min=$(getMinTime)
	echo "Minimum is Dice$min : ${diceNumbArr[((Dice$min))]}"
}

main
