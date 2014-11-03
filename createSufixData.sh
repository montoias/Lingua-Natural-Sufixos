#!/bin/bash

generatesufixdata()
{

	for file in $1/*.txt
	do
		 # name without extension
	    name=${file%\.*}
	    echo "fsmcompile and draw ${name}"
	    fsmcompile -t -i letras.syms -o letras.syms  -F "${name}.fsm" < "${name}.txt"
		 fsmdraw -i letras.syms -o letras.syms < "${name}.fsm" | dot -Tpdf > "${name}.pdf"
	done

	for file in $1/*.txt
	do
		name=${file%\.*}
		if [ "${name}" != "$1/automatoELA" ] && [ "${name}" != "$1/automatoANZIL" ]
	  	then
	  		if [ "$1" == "sufixo-ela" ]
	  		then
				echo "fsmcompose - ela with ${name}"
				fsmcompose "${name}.fsm" sufixo-ela/automatoELA.fsm > "${name}Final.fsm"
			else
				echo "fsmcompose - anzil with ${name}"
				fsmcompose "${name}.fsm" sufixo-anzil/automatoANZIL.fsm > "${name}Final.fsm"
			fi
			fsmdraw -i letras.syms -o letras.syms < "${name}Final.fsm"| dot -Tpdf > "${name}Final.pdf"
		fi
	done
}

generatesufixdata $1
