#!/usr/bin/env bash
# File: guessinggame.sh
function check {
	echo "You seem to be the owner of this computer. OKAY!"
	echo -n "Tell me the total number of files in your current directory. Remember hidden files are also included in total number of files in your current directory."
	 
	while [[ true ]]
	do
		read res
		con=$(ls -la | wc -l)
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
					echo -n "OH!!! That's close. Try again:"
				else
					 echo -n "TOO HIGH.Try again:"
				 fi
			else
				dif=$(expr $con-$res)
				if [[ dif -lt 5 ]]
				then
					echo -n "OH!!!! That's close. Try again:"
				else
					echo -n "TOO LOW.Try again:"
				fi
			fi
		fi
      	done
}
check
