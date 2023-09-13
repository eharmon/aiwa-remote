#!/bin/bash

echo "Press ctrl-c to quit."

while true
do
	echo "Next button name: "
	read button
	echo "Press button"
	echo $button >> scan_result
	ir-ctl -r -1 >> scan_result
	echo >> scan_result
done
