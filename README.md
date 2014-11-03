Lingua-Natural-Sufixos
======================

#-ELA
------

O transdutor que trata o sufixo ELA está separado de certa maneira por duas partes, uma que trata o sufixo, isto é, consumindo-o e terminando a palavra com "o" ou "a" (masculino/feminino), e por outra parte que analisa a palavra e devolve a mesma intacta por não se tratar de uma palavra sufixada.
 
Decidimos tratar de casos particulares que achamos importantes e interessantes, como é o possível verificar com a palavra “branquela” que ao ser desufixada o seu antecedente “qu” passa a ser apenas um “c”. Pensámos tratar de "qu" como um só pois na língua portuguesa "q" está sempre seguido de "u".
 
Outro caso que encontrámos foi o antecedente “c” que na grande maioria das vezes passa a “ç” após a palavra desufixada. Por exemplos as palavras  "almocela" e "chouricela".  

E ainda algumas palavras em que as letras que compõem o sufixo aparecem parcialmente ou totalmente a meio de uma palavra sufixada, consumindo assim o sufixo e devolvendo a palavra desufixada. Por exemplo a palavra "relela" devolveria "rela".  

#-ANZIL
-------
Para o sufixo “anzil” o procedimento foi bastante parecido ao do sufixo ela, estando este também dividido em duas partes. A que trata do sufixo, consumindo-o e devolvendo a nova palavra terminada em “a” ou “o”. E a outra parte que devolve a palavra, caso esta não se trate de uma palavra sufixada.
 
Para além do referido anteriormente tratamos dos problemas da presença da parcialidade do sufixo a meio de uma palavra, e com isto ela poder ser devolvida sem qualquer alteração se não contiver o sufixo futuramente, ou retornar a palavra desufixada caso o mesmo apareça de seguida.


#- Scripts para execução do projecto
	Script que invoca todos os outros:
		./run.sh
	Script para limpar todo o lixo gerado pelos scripts:
		./cleanDirs.sh
	Script que recebendo o nome da pasta, itera por todos os .txt(entradas) e gera todos os .fsm e .pdf necessários para o composição da entrada com transdutor (excepto para os ficheiros: automatoANZIL,txt e automatoELA.txt)
		./createSufixData.sh <nome_da_pasta>
	
Scripts para auxilio no desenvolvimento do transdutor:
	Script que gera todas as transições possíveis de um estado para outro excepto para as letras que são dadas como argumento
generateElseExcept.rb <estado_actual> <estado_final> “letras_que_não_queremos_na_transição”
	Script que gera o transdutor de entrada com o input dado
	generateInputWord.rb <palavra>
	
Nota: Para poder correr o script, é necessário ter ruby instalado. Pode ser transferido se necessário em https://www.ruby-lang.org/en/downloads/.
