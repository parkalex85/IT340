#!/bin/bash

month="$(date +%b)"
day_0=$(date +%d)
day_1=$((day_0-1))
day_2=$((day_0-2))

grep -e "[$day_0$day_1$day_2] $month" /var/log/*.log > ~/templogs/test.txt

grep -c -e "ERROR" -e "Error" -e "error" -e "EE" -e "Critical" -e "Fatal" > ~/templogs/test2.txt


