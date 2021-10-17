*** Settings ***
Documentation              Exemplo para estudo de argumentos (com retorno, sem retorno e condicional)
Library                    String

*** Variables ***
#variáveis  dicionário
&{PESSOA}              id=1
	...                 nome=pedro
   ...                 email=pedro@teste.com
   ...                 idade=12

*** Test Cases ***
Caso de teste exemplo 01
   Uma keyword qualquer 01
   

*** Keywords ***
Uma keyword qualquer 01
    Uma subkeyword com argumentos    ${PESSOA.nome}    ${PESSOA.email}
    ${MENSAGEM_ALERTA}    Uma subkeyword com argumentos e retorno   ${PESSOA.nome}    ${PESSOA.idade} 
    Log    ${MENSAGEM_ALERTA}

Uma subkeyword com argumentos
    [Arguments]    ${NOME_USUARIO}    ${EMAIL_USUARIO}
    Log    Nome do usuário: ${NOME_USUARIO} 
    Log    E-mail do usuário: ${EMAIL_USUARIO} 

Uma subkeyword com argumentos e retorno
    [Arguments]    ${NOME_USUARIO}    ${IDADE_USUARIO}
    ${MENSAGEM}    Set Variable If    ${IDADE_USUARIO}<18    Não autorizado! O usuário ${NOME_USUARIO} é menor de idade!
    [Return]       ${MENSAGEM}