#!/usr/bin/env bash
# File guessinggame.sh


files=$(ls | wc -l)

function testguess {
	while true; do	
		read -p "Guess how many files are in the current directory: " guess
		if [[ $guess -lt $files ]]; then
			echo "Too Low ..."
			echo "try again ..."
		elif [[ $guess -gt $files ]]; then
			echo "Too High ..."
			echo "try again ..."
		elif [[ $guess -eq $files ]]; then
			echo "Wahey!! you got it right!!."
			exit
		fi
	done	




}

echo "Welcome!!!"
echo "would you like to play a game?"
echo "..."
echo "hope so, lets go"
testguess