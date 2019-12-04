#!/bin/bash -x

present=1
absent=0
ratePerHour=300
totalHrs=0
i=0

while [[ $i -lt 20 && $totalHrs -lt 51 ]]
do
	workingHr=0
	presentStatus=$(( RANDOM % 2 ))
	case $presentStatus in
		$present )
			fullTime=1
			partTime=0
        		presentType=$(( RANDOM % 2 ))
			echo $presentType
			case $presentType in
				$fullType ) workingHr=8;;
				$partTime ) workingHr=4;;
	        	esac
			totalHrs=$(( $totalHrs + $workingHr ));;
		* )
			workingHr=0;;
	esac
	i=$(( $i + 1 ))
done
monthlySalary=$(( $ratePerHour * $totalHrs ))
echo $monthlySalary
echo $totalHrs
echo $i
