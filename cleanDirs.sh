#!/bin/bash

#delete file ONLY if it does exist
deletefile(){
	for file in $1/*.pdf $1/*.fsm
	do
		if [ -f $file ] ; then
		rm $file
		fi
	done
}

deletefile "sufixo-ela"
deletefile "sufixo-anzil"