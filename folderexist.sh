#!/bin/bash -x

echo "Enter Folder Name: "
read foldername
if [ -d $foldername ]
then
	echo "$foldername found"
else
	echo "$foldername not found"
fi


