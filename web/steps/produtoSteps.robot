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

# Então o produto "Blouse" deve ser listado na página de resultado de busca
