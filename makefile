all : README.md


README.md :
	echo "# The guessinggame.sh Project Title :Peer-graded Assignment: Bash, Make, Git, and GitHub"
	echo "The date and time at which make was run:" >> README.md
	date "+%Y-%m-%d %H:%M:%S" >> README.md
	echo "The number of lines of code contained in guessinggame.sh is:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md


clean :
		rm README.md
