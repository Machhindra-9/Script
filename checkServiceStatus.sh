#!/bin/bash
#These script will evalutate wheather httpd service running or not
read -p "Enter the service name" check_srv
ans=$(rpm -qa | grep $check_srv)
if [ $? -eq 0 ]; then
	stat=$(systemctl is-active $check_srv)
	if [ "$stat" = "active" ]; then
		echo "$check_srv service is active"
	else
		echo $stat
		echo "$check_srv service is inactive"
	fi
else
	echo "service is not found"
fi

