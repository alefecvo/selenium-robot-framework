*** Settings ***
Documentation              Exemplo para estudo de FOR (estrutura repetição)

*** Variables ***
#variáveis  dicionário     [0]       [1]        [2]        [3]
@{MINHA_LISTA_FRUTAS}      banana    morango    abacaxi    kiwi

*** Test Cases ***
Teste do FOR do tipo REPEAT KEYWORD
    [Documentation]    Faz um loop FOR do tipo REPEAT KEYWORD chamando keyword várias vezes
    Usando FOR REPEAT KEYWORD

Teste de FOR do tipo IN RANGE
    [Documentation]    Faz um loop FOR do tipo IN RANGE dentro de um intervalo que você passar
    Usando FOR IN RANGE

Teste do FOR do tipo IN
    [Documentation]    Faz um loop FOR do tipo IN percorrendo a lista que você passar
    Usando FOR IN


Teste do FOR do tipo IN ENUMERATE
    [Documentation]    Faz um loop FOR do tipo IN ENUMERATE percorrendo a lista que você passar armazenando índice
    Usando FOR IN ENUMERATE


Teste do FOR IN do tipo EXIT FOR LOOP IF
    [Documentation]    Faz um loop FOR IN do tipo EXIT FOR LOOP IF percorrendo a lista que você passar e sai quando você determinar
    Usando FOR IN EXIT FOR LOOP IF
   
*** Keywords ***
Usando FOR REPEAT KEYWORD
    Log To Console    ${\n}
    Repeat Keyword    4x    Log To Console    Minha repetição de keyword!!

Usando FOR IN RANGE
    Log To Console    ${\n}
    FOR    ${element}    IN RANGE   0    2
        Log To Console    Minha posição é:${element}
    END

Usando FOR IN
    Log To Console    ${\n}
    FOR    ${element}    IN    @{MINHA_LISTA_FRUTAS}
        Log To Console    Minha fruta é:${element}
    END

Usando FOR IN ENUMERATE
    Log To Console    ${\n}
    FOR    ${index}    ${element}    IN ENUMERATE    @{MINHA_LISTA_FRUTAS}
        Log To Console    Minha fruta é:${index} --> ${element}
    END

Usando FOR IN EXIT FOR LOOP IF
    Log To Console    ${\n}
    FOR    ${index}    ${element}    IN ENUMERATE    @{MINHA_LISTA_FRUTAS}
        Log To Console    Minha fruta é:${index} --> ${element}
        Exit For Loop If    '${element}' == 'morango'
    END          