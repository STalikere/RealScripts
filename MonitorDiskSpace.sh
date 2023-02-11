#!/bin/bash
space=`df -h . | awk 'NR==2 {print $(NF-1)}' | sed 's/%//g'`
if [ $space -gt 30 ]
then
	echo "The memory space is greater then 30%" | mail -s "MOnitoringSpace" ts.sudha@gmail.com
fi

