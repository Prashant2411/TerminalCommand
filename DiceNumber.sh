#!/bin/bash -x

random=$(( RANDOM%6 ))
random=$(( $random + 1 ))
echo "Dice number is $random"
