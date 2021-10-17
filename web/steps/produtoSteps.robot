*** Settings ***
Library                    SeleniumLibrary
Resource                   ../base/base.robot
Resource                   ../pages/produtoPage.robot

*** Variables ***


*** Keywords ***
Dado que estou na página home do site
    Check opened browser
Quando eu pesquisar pelo produto "${PRODUCT}"
    Input search text "${PRODUCT}"
    Click submit button

Então o produto "${PRODUCT}" deve ser listado na página de resultado de busca
    Check returned product page title
    Check returned product "${PRODUCT}"

E também o valor do produto "${PRICE}"
    Check returned price product "${PRICE}"
                
Então deve ser exibido a mensagem "${MESSAGE}"
    Check returned not found product "${MESSAGE}"

