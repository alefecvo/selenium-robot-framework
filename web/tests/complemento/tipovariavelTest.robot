*** Settings ***
Documentation              Exemplo para estudo de tipos de variáveis (simples, lista e dicionário)
Library                    String

*** Variables ***
#variáveis simples, lista, dicionário
${ANO}              2021
#variáveis lista
@{FRUTAS}           banana  morango
#variáveis  dicionário
&{LIVRO}            id=1
	...             title=harry potter

*** Test Cases ***
Caso de teste exemplo 01
   Uma keyword qualquer 01

Caso de teste exemplo 02
   Uma keyword qualquer 02    Álefe   

Caso de teste exemplo 03 
   Uma keyword qualquer 03 "2021"    


*** Keywords ***
Uma keyword qualquer 01
    Log   ${ANO}
    Log   Fruta 01: ${FRUTAS[0]} Fruta 02: ${FRUTAS[1]} 
    Log   Código do livo:${LIVRO.id} Título do livro:${LIVRO.title} 

Uma keyword qualquer 02
    [Arguments]    ${NOME}
    Log    ${NOME}


Uma keyword qualquer 03 "${ANO}"
    Log    ${ANO}


