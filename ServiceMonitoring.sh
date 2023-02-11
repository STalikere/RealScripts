#!/bin/bash
services="sshd jenkins tomcat postfix"
mailbody=""
for i in $services
do
	ps -C $i
	if [ $? -ne 0 ]
	then
		mailbody="$mailbody $i"
		echo "$i service is not running" | mail -s "Service Monitoring" ts.sudha@gmail.com
	fi
done
echo "$mailbody services not running" | mail -s  "Service Monitoring" ts.sudha@gmail.com

