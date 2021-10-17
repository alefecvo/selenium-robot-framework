*** Settings ***
Library                    SeleniumLibrary
Resource                   ../base/base.robot
Resource                   ../steps/produtoSteps.robot

Suite Setup                Open the browser
Suite Teardown             Close the browser

*** Test Cases ***
Deve pesquisar produto existente
    Dado que estou na página home do site
    Quando eu pesquisar pelo produto "Blouse"
    Então o produto "Blouse" deve ser listado na página de resultado de busca
    E também o valor do produto "$27.00" 

Deve pesquisar produto não existente
    Dado que estou na página home do site
    Quando eu pesquisar pelo produto "naoExiste"
    Então deve ser exibido a mensagem "No results were found for your search "naoExiste""