 #!/bin/bash -x

declare -A dailyHrsArray
declare -A totalHrsArray
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


function main () {
ratePerHour=300
i=0
while (( i < 20 && totalHrs < 50 )) 
do
	dailyHrs=$(getWorkingHours)
	dailyWage=$(( $dailyHrs * $ratePerHour ))
	dailyHrsArray[((Day$i))]=$dailyWage
	totalHrs=$(( $totalHrs + $dailyHrs ))
	totalWage=$(( $totalHrs * $ratePerHour ))
	totalHrsArray[((Day$i))]=$totalWage
	i=$(( $i + 1 ))
done
monthlySalary=$(( $ratePerHour * $totalHrs ))
for a in ${!dailyHrsArray[@]}
do
	echo "$a : ${dailyHrsArray[$a]}"
done
}

main
