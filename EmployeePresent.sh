#!/bin/bash -x

ratePerHour=300
for (( i=0;i<20;i++ ))
do
isPresent=$(( RANDOM%3 ))
if [ $isPresent -eq 0 ]
then
	workingHr=0
elif [ $isPresent -eq 1 ]
then
	workingHr=4
else
	workingHr=8
fi
	dailySalary=$(( $ratePerHour * $workingHr ))
	monthlyWage=$(( $monthlyWage + $dailySalary ))
done
echo "Monthly Wage: $monthlyWage"
