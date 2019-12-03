#!/bin/bash

for file in `ls logFiles/*.log*`
do
	count=`grep -o "systemd" $file|wc -l`
	if [ $count -gt 0 ]
	then
		echo "$file count is: $count"
	fi
done
