#!/bin/bash
#Script that monitors the availability of the service

#Make sure that the user has given the argument while running this script
if [ -z $1 ];then
	 echo "You need to provide the argument with the script." 
else 
	SERVICE=$1 
	echo $SERVICE
fi

#run without stopping to do the monitoring the service
	#1. Verify that service is ruuning
		if [ ps aux | grep $SERVICE ]; then
			echo "All Good"
		else
			echo "$SERVICE is not found as a service"
			echo "Make sure $SERVICE is ruuning and try again"
			echo "ps aux | grep process gives the status of a service/process"

		fi
	#2. Monitor the service
		while ps aux | grep $SERVICE
		do
			sleep 10
		done
#actions if the services are failing
#service command is used to start/stop the service
 service $SERVICE start

