#!/bin/bash

COMMAND="ir-ctl -k ./aiwat300.toml -K"

case $1 in
	power)
		KEY="POWER"
		;;
	tuner | tuner-a)
		KEY="TUNER"
		;;
	receiver | tuner-b)
		KEY="RADIO"
		;;
	aux)
		KEY="AUX"
		;;
	phono)
		KEY="PLAYER"
		;;
	tape)
		KEY="TAPE"
		;;

	1)
		KEY="1"
		;;
	2 | 7)
		KEY="2"
		;;
	3 | 8)
		KEY="3"
		;;
	4 | 9)
		KEY="4"
		;;
	5 | 10)
		KEY="5"
		;;
	6 | auto | manual | auto-manu | auto-manual)
		# TODO: With a reciever this isn't button 6, button 1 is
		KEY="6"
		;;
	tuning-down | tune-down)
		KEY="CHANNELDOWN"
		;;
	tuning-up | tune-up)
		KEY="CHANNELUP"
		;;
	start | cut | start-cut)
		KEY="CUT"
		;;
	rec | record)
		KEY="RECORD"
		;;
	rew | rewind)
		KEY="REWIND"
		;;
	play)
		KEY="PLAY"
		;;
	ffwd | fast-forward)
		KEY="FASTFORWARD"
		;;
	pause)
		KEY="PAUSE"
		;;
	stop)
		KEY="STOP"
		;;

	muting | mute)
		KEY="MUTE"
		;;
	volume-down)
		KEY="VOLUMEDOWN"
		;;
	volume-up)
		KEY="VOLUMEUP"
		;;
esac

if [[ -z "$KEY" ]]; then
	echo "No key or invalid key specified: $1"
	exit 1
fi

$COMMAND KEY_$KEY
