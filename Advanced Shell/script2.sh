#!/bin/bash

initial=$(lsusb|wc -l)

while [[  ]]; do
	count=$(lsusb|wc -l)
	if [[ count -lt initial ]]; then
			echo "USB ejected"
	elif [[ count -gt initial ]]; then
			echo "USB plugged in"
	fi
done
