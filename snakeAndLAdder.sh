#!/bin/bash -x

echo "Welcome to the Snake and Ladder Simulation"
declare -A  position

#CONSTANT
NO_PLAY=0;
LADDER=1
SNAKE=2;
WINNING_POSITION=100;
START_POSITION=0;

#Variables
dice=0

function playOption() {
	local die=$((RANDOM%6+1))
	local option=$((RANDOM%3))
	((dice++))
	case $option in
		$NO_PLAY)
			position[$player]=${position[$player]}
			;;
		$LADDER)
			position[$player]=$((${position[$player]}+$die))
			checkPosition $die
			;;
		$SNAKE)
			position[$player]=$((${position[$player]}-$die))
			checkPosition
			;;
	esac
}

function checkPosition() {
	if ((${position[$player]}<$START_POSITION))
	then
		position[$player]=$START_POSITION
	elif ((${position[$player]} >$WINNING_POSITION))
	then
		position[$player]=$((${position[$player]}-$1))
	fi
}

function switchPlayer() {
	if (($player==1))
	then
		player=2
	else
		player=1
	fi
}

function startGame() {
	player=1
	position[$player]=$START_POSITION
	player=2
	position[$player]=$START_POSITION
	while ((${position[$player]}<$WINNING_POSITION))
	do
		playOption
		if ((${position[$player]} == $WINNING_POSITION))
		then
			echo "Dice count= $dice"
			echo " Winner is $player"
			break;
		fi
		switchPlayer
	done
}

startGame
