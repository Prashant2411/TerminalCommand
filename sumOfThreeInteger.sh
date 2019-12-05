array=(1 -1 2 -2 3 -3 4 -4 5 -5)

for((i=0; i<${#array[@]}; i++))
do
	for((j=$(($i+1)); j<${#array[@]}; j++))
	do
		for((k=$(($j+1)); k<${#array[@]}; k++))
		do
			if [ $((${array[i]} + ${array[j]} + ${array[k]})) -eq 0 ]
			then
			temp=${array[i]}" "${array[j]}" "${array[k]}
			array1[i]=$temp
			echo ${array[i]}" "${array[j]}" "${array[k]}
				echo ""
			fi
		done
	done
done
#echo ${array1[@]}
for((i=0;i<${#array1[@]};i++))
do
	echo ${array[i]} " "  ${array[$((i+1))]} " "  ${array[$((i+2))]} 
	echo " "
done
