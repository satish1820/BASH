#!/bin/bash

#WAP to find if the given name if file or not; if yes then check the permission for write; if yes then write a string to it

[ -z $1 ] && echo "Usage: $0 [arg]"

if [ -f $1 ] 
then
	if [ ! -w $1 ]
	then
		echo "Setting up write permission to file:"
		sleep 2
		chmod +w $1
	else
		echo "Enter string: "
		read P
		echo $P > $1
	fi
	
fi

