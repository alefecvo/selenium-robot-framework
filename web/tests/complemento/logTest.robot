*** Settings ***
Documentation              Exemplo para estudo de logs
Library                    String
Library                    SeleniumLibrary

*** Variables ***
#variáveis  dicionário
@{FRUTAS}                 banana    morango    abacaxi    kiwi

*** Test Cases ***
Caso de teste exemplo 01
   Uma log para mensagens
   Usando log console
   Usando screenshots
   

*** Keywords ***
Uma log para mensagens
    Log    Minha mensagem de LOG
    ${VAR}    Set Variable    Variável qualquer
    Log    Posso logar uma ${VAR} no meio de um log

Usando log console
    Log To Console    Posso logar na saída do console
    Log Many          Posso logar minha lista completa @{FRUTAS}
    Log               Posso logar apenas uma fruta ${FRUTAS[0]}

Usando screenshots
    Log                         Nos testes web, podemos logar screenshots com a SeleniumLibrary
    Open Browser                http://automationpractice.com/    headlessfirefox
    Capture Page Screenshot     nome_do_screenshot.png
    Close Browser