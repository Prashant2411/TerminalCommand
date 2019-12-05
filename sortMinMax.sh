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

function getSorted () {
	for (( i=0;i<10;i++ ))
	do
		for (( j=0;j<10;j++ ))
		do
			if [[ "${numberArr[i]}" < "${numberArr[j]}" ]]
			then
				temp="${numberArr[j]}"
				numberArr[j]="${numberArr[i]}"
				numberArr[i]=$temp
			fi
		done
	done
}

function main () {
        for (( i=0;i<10;i++ ))
        do
                numberArr[((i))]=$(getNumber)
        done
	getSorted
        echo ${numberArr[@]}
}

main

