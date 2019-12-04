#!/bin/bash

a=413
b=233
c=435
d=192
e=567

if [ $a -lt $b -a $a -lt $c -a $a -lt $d -a $a -lt $e ]
then
	echo "Min is: $a"
elif [ $b -lt $a -a $b -lt $c -a $b -lt $d -a $b -lt $e ]
then
        echo "Min is: $b"
elif [ $c -lt $a -a $c -lt $b -a $c -lt $d -a $c -lt $e ]
then
        echo "Min is: $c"
elif [ $d -lt $a -a $d -lt $c -a $d -lt $b -a $d -lt $e ]
then
        echo "Min is: $d"
elif [ $e -lt $a -a $e -lt $c -a $e -lt $d -a $e -lt $b ]
then
        echo "Min is: $e"
fi

if [ $a -gt $b -a $a -gt $c -a $a -gt $d -a $a -gt $e ]
then
        echo "Max is: $a"
elif [ $b -gt $a -a $b -gt $c -a $b -gt $d -a $b -gt $e ]
then
        echo "Max is: $b"
elif [ $c -gt $a -a $c -gt $b -a $c -gt $d -a $c -gt $e ]
then
        echo "Max is: $c"
elif [ $d -gt $a -a $d -gt $c -a $d -gt $b -a $d -gt $e ]
then
        echo "Max is: $d"
elif [ $e -gt $a -a $e -gt $c -a $e -gt $d -a $e -gt $b ]
then
        echo "Max is: $e"
fi
