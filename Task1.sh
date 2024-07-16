#!/bin/bash

read -p "Enter your time in hh:mm formate (e.g. 14:35): " TIME

CHECK=$( echo "$TIME" | grep ":")

echo $CHECK

if [ -z $CHECK ]
then
	echo "Enter the time in hh:mm format"
	exit
fi


HOUR=${TIME:0:2}
MIN=${TIME:3:5}

if (( 00 <= MIN && MIN < 60 ));
then
	if (( 00 <= HOUR && HOUR < 06 ))
	then
		echo "Early morning"
		exit
	elif (( 06 <= HOUR && HOUR < 12 ))
	then
		echo "Morning"
		exit
	elif (( 12 <= HOUR && HOUR < 18 ))
	then
        	echo "Afternoon"
        	exit
	elif (( 18 <= HOUR && HOUR < 24 ))
	then
        	echo "Late Night"
        	exit
	else
		echo "Please enter your time correctly"
	fi
else
	echo "Please enter your time correctly"
fi

