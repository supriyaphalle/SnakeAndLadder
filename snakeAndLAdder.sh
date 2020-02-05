#!/bin/bash -x

echo "Welcome to the Snake and Ladder Simulation"


#CONSTANT
NO_PLAY=0;
LADDER=1
SNAKE=2;
WINNING_POSITION=100

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

function checkPosition() {
	if (($currentPosition<0))
	then
		currentPosition=0
	elif (($currentPosition >$WINNING_POSITION))
	then
			currentPosition=$(($currentPosition-$die))
	fi
}


while (( $currentPosition<$WINNING_POSITION))
do
	die=$((RANDOM%6+1))
	playOption
	checkPosition
done
echo "Congooo you Win"
