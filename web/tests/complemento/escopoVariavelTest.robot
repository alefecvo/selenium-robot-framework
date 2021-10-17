*** Settings ***
Documentation              Exemplo para estudo de escopo de variáveis (global, local)
Library                    String

*** Variables ***
${GLOBAL_INSTANCIADA}      Minha variável GLOBAL_INSTANCIADA foi instaciada para a suite     


*** Test Cases ***
Caso de teste exemplo 01
    Uma keyword qualquer 01
    Uma keyword qualquer 02

# Caso de teste exemplo 02
#     Uma keyword qualquer 02


*** Keywords ***
Uma keyword qualquer 01
    ${GLOBAL_CRIADA_EM_TEMPO_EXECUCAO}    Generate Random String
    Set Global Variable    ${GLOBAL_CRIADA_EM_TEMPO_EXECUCAO}
    Set Suite Variable     ${SUITE_CRIADA_EM_TEMPO_EXECUCAO}    Variável da suite
    Set Test Variable      ${TESTE_01}                          Variável do Teste 01
    Log                    ${TESTE_01}
    ${LOCAL}               Set Variable                         Variável local da keyword 01

Uma keyword qualquer 02
    ${LOCAL}               Set Variable                         Variável local da keyword 02
    Log            ${GLOBAL_INSTANCIADA}
    Log            ${GLOBAL_CRIADA_EM_TEMPO_EXECUCAO} 
    Log            ${SUITE_CRIADA_EM_TEMPO_EXECUCAO}
    Log            ${TESTE_01}
    Log            ${LOCAL} 
