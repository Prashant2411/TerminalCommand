#!/bin/bash -x

cmd=`env | grep -i usersecret`

	if [ -z $cmd ]
	then
		export usersecret="dH34xJ"
	else
		echo "ERROR!!"
	fi
