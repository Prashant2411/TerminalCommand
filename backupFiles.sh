#!/bin/bash -x

data=`find -type f -mtime +7 -name '*.log'`
for data1 in $data
do 
	mv $data1 Backup/
done 

