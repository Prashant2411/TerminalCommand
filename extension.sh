#!/bin/bash -x

currentDate=$(date +%d%m%y)
for files in `ls *.log.1`
do
	nfile=`echo $files | awk -F. '{print $1}'`
	ext=`echo $files | awk -F. '{print $2 "." $3}'`
	echo $ext
	mv $files $nfile$currentDate.$ext
	echo `ls *.log.1`
done 
