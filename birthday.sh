#!/bin/bash -x

declare -A personArray
declare -A monthBirthCount

function getMonth () {
	month=$(( RANDOM%12+1 ))
	echo $month
}

function getYear () {
	year=$(( RANDOM%2 ))
	if [ year -eq 0 ]
	then
		year=1992
		echo $year
	else
		year=1993
		echo $year
	fi
}

function getBirthMonth () {
	for (( i=1;i<=50;i++ ))
	do
		personArray[((Person$i))]=$(getMonth)
	done
}

function getMonthBirthCount () {
	for month in "${personArray[@]}"
	do
		case $month in
			1 )
				jan=$(( $jan + 1 ))
				monthBirthCount[((Month$month))]=$jan;;
			2 )
				feb=$(( $feb + 1 ))
				monthBirthCount[((Month$month))]=$feb;;
			3 )
				march=$(( $march + 1 ))
				monthBirthCount[((Month$month))]=$march;;
			4 )
				april=$(( $april + 1 ))
				monthBirthCount[((Month$month))]=$april;;
			5 )
				may=$(( $may + 1 ))
				monthBirthCount[((Month$month))]=$may;;
			6 )
				june=$(( $june + 1 ))
				monthBirthCount[((Month$month))]=$june;;
			7 )
				july=$(( $july + 1 ))
				monthBirthCount[((Month$month))]=$july;;
			8 )
				aug=$(( $aug + 1 ))
				monthBirthCount[((Month$month))]=$aug;;
			9 )
				sept=$(( $sept + 1 ))
				monthBirthCount[((Month$month))]=$sept;;
			10 )
				oct=$(( $oct + 1 ))
				monthBirthCount[((Month$month))]=$oct;;
			11 )
				nov=$(( $nov + 1 ))
				monthBirthCount[((Month$month))]=$nov;;
			12 )
				dec=$(( $dec + 1 ))
				monthBirthCount[((Month$month))]=$dec;;
		esac
	done
}

function main () {
	getBirthMonth
	getMonthBirthCount
	for k in "${!monthBirthCount[@]}"
	do
		echo "$k : ${monthBirthCount[$k]}"
	done | sort -k1 -n
}

main
