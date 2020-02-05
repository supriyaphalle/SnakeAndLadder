#!/bin/bash 

echo "Welcome to the Snake and Ladder Simulation"
declare -A  position

#CONSTANT
NO_PLAY=0;
LADDER=1
SNAKE=2;
WINNING_POSITION=100

#Variables
currentPosition=0
dice=0

function playOption() {
	die=$((RANDOM%6+1))
	option=$((RANDOM%3))
	((dice++))
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
	position[$dice]=$currentPosition
}


while (( $currentPosition<$WINNING_POSITION))
do
	playOption
	echo $dice
	checkPosition
done
echo "Congooo you Win"
for i in ${!position[@]}
do
	echo "$i ${position[$i]}"
done | sort -k1 -n 
