#!/bin/bash -x

function getWorkingHours () {

	present=1
	absent=0
	workingHr=0
	presentStatus=$(( RANDOM % 2 ))
	case $presentStatus in
		$present )
			fullTime=1
			partTime=0
        		presentType=$(( RANDOM % 2 ))
			case $presentType in
				$fullTime ) workingHr=8;;
				$partTime ) workingHr=4;;
	        	esac;;
		* )
			workingHr=0;;
	esac
	i=$(( $i + 1 ))
	echo $workingHr
}

ratePerHour=300
i=0
while (( i < 20 && totalHrs < 50 )) 
do
	dailyHrs=$(getWorkingHours)
	dailyWage=$(( $dailyHrs * $ratePerHour ))
	dailyHrsArray[((i))]=$dailyWage
	totalHrs=$(( $totalHrs + $dailyHrs ))
	totalWage=$(( $totalHrs * $ratePerHour ))
	totalHrsArray[((i))]=$totalWage
	i=$(( $i + 1 ))
done
monthlySalary=$(( $ratePerHour * $totalHrs ))
echo ${totalHrsArray[@]}
echo ${dailyHrsArray[@]}
