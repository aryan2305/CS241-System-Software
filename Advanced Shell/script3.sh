#!/bin/bash
goDir()
{
	cd $1
	 
	ls -l | grep ^d | awk '{print $NF}' | while read -r line
	do
		goDir $line
	done
	
	if [[ -e $1.exe ]]; then
		rm -r $1.exe
	fi
	
	if [[ -e $1.EXE ]]; then
		rm -r $1.EXE
	fi

	if [[ -e virusdefinition.virus ]]; then
		while read -r line2
		do 
			rm -r $line2
		done < virusdefinition.virus
	fi

	

	cd ..
}

goDir $1