#!/usr/bin/env bash
# File: guessinggame.sh
function check {
	echo "Let's start the game. OKAY!"
	echo -n "Tell me the total number of files in your current directory. Exclude those hidden ones:"
	 
	while [[ true ]]
	do
		read res
		con=$(expr $(ls -l | wc -l) - 1)
		if [[ res -eq con ]]
		then
			echo "AMAZING!!CONGRATULATIONS!!"
			break;
		else
			if [[ res -gt con ]]
			then
				dif=$(expr $res-$con )
				if [[ dif -lt 5 ]]
				then
					echo -n "OH!!! That's close. Aim for lower. Try again:"
				else
					 echo -n "TOO HIGH.Try again:"
				 fi
			else
				dif=$(expr $con-$res)
				if [[ dif -lt 5 ]]
				then
					echo -n "OH!!!! That's close. Aim for higher. Try again:"
				else
					echo -n "TOO LOW.Try again:"
				fi
			fi
		fi
      	done
}
check 2>> errors.txt
