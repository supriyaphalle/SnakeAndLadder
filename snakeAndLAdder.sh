#!/bin/bash -x

echo "Welcome to the Snake and Ladder Simulation"


#CONSTANT
NO_PLAY=0;
LADDER=1
SNAKE=2;
START_POSITION=0;


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


 die=$((RANDOM%6+1))
	echo $number
playOption
