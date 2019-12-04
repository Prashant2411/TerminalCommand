
#!/bin/bash -x

read -p "Enter your number " n
i=1
powerof2=1
while (( i <= n && $powerof2 < 256 ))
do
	powerof2=`expr $powerof2 \* 2`
	i=$(( $i + 1 ))
	echo "$powerof2"
done

