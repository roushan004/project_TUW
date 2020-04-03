README.md:
	echo "# Project_TUW" >README.md
	echo "" >>README.md
	echo "***TITLE: Bash, Make, Git and Github Assignment***" >>README.md
	echo ""	>>README.md
	echo "***The make command was executed at: $$(date)***" >>README.md
	echo "" >>README.md
	echo "***The number of lines of code contained in guessinggame.sh is: $$(cat guessinggame.sh | wc -l)***" >> README.md
del:
	rm README.md
	
