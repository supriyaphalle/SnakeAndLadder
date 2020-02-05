#!/bin/bash -x

echo "Welcome to the Snake and Ladder Simulation"


#CONSTANT
NO_PLAY=0;
LADDER=1
SNAKE=2;


#Variables
currentPosition=0

function playOption() {
	option=$((RANDOM%3))

	case $option in
		$NO_PLAY)
				currentPossiton=$currentPossion
				;;
		$LADDER)
				currentPosition=$(($currentPosition+$die))
				;;
		$SNAKE)
				currentPosition=$(($currentPosition-$die))
	esac
}


while (( $currentPosition<=100))
do

	die=$((RANDOM%6+1))
	echo $number
	playOption
	if (($currentPosition<0))
	then
		currentPosition=0
	fi
done
