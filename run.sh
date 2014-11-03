#!/bin/bash

# Remove files if they exist
printf "\nRemoving files from previous iterations...\n\n"
./cleanDirs.sh

echo "**********************************"
echo "Creating input words for sufix ela"
printf "**********************************\n" 

# generate input transducers for sufix
ruby generateInputWord.rb "almocela" > sufixo-ela/almocela.txt
ruby generateInputWord.rb "branquela" > sufixo-ela/branquela.txt
ruby generateInputWord.rb "picadela" > sufixo-ela/picadela.txt
 
# Draw Compile and compose using fsmtools for each sufix
# sufixo ela

./createSufixData.sh "sufixo-ela"

echo "**********************************"
echo "Creating input words for sufix anzil"
printf "**********************************\n"

# generate input transducers for sufix anzil
ruby generateInputWord.rb "corpanzil" > sufixo-anzil/corpanzil.txt
ruby generateInputWord.rb "pernanzil" > sufixo-anzil/pernanzil.txt
ruby generateInputWord.rb "banananzil" > sufixo-anzil/banananzil.txt

# sufixo anzil
./createSufixData.sh "sufixo-anzil"

# generate union of sufixes
fsmunion sufixo-ela/automatoELA.fsm sufixo-anzil/automatoANZIL.fsm > transdutorFinal.fsm
fsmdraw -i letras.syms -o letras.syms < transdutorFinal.fsm | dot -Tpdf > transdutorFinal.pdf

#remove fsm's
printf "**********************************\n"
echo "	Removing fsm files			"
printf "**********************************\n" 

rm sufixo-anzil/*.fsm
rm sufixo-ela/*.fsm
rm *.fsm


