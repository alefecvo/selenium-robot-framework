*** Settings ***
Documentation              Exemplo para estudo de IF (estrutura condicional)
Library                    String
Library                    SeleniumLibrary

*** Variables ***
#variáveis  dicionário
@{FRUTAS}                 banana    morango    abacaxi    kiwi

*** Test Cases ***
Caso de teste exemplo 01
   Rodando uma keyword dada uma condição = true
   Rodando uma keyword dada uma condição = false
   Armazenando um valor em uma variável dada uma condição
   
*** Keywords ***
Rodando uma keyword dada uma condição = true
    Run Keyword If    '${FRUTAS[0]}' == 'banana'       Log    O item retorndo é banana!

Rodando uma keyword dada uma condição = false
    Run Keyword If    '${FRUTAS[0]}' == 'morango'       Log    O item retorndo não é morango!
    
Armazenando um valor em uma variável dada uma condição
    ${VAR}    Set Variable If    '${FRUTAS[0]}' == 'banana'    banana
    Log    Minha variável VAR é uma ${VAR}!