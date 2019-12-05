#!/bin/bash -x

read -p "enter the number of which you want prime factors " number
j=0
for((i=2; i<$number; i++))
do
	while [ $(($number%$i)) -eq 0 ]
	do
		echo $i
		array[j]=$i
		number=$(($number/$i))
		if [ $number -eq 0 ]
		then
			break
		fi
		j=$(($j+1))
		done

done
if [ $number -gt 2 ]
	then
		array[j]=$number
		echo $number
	fi

echo ${array[@]}
