*** Settings ***
Library                    SeleniumLibrary

*** Variables ***
${URL}            http://automationpractice.com/
${BROWSER}        chrome
${TIMEOUT}        20

*** Keywords ***
Open the browser
    Set Selenium Timeout    ${TIMEOUT}          
    Open Browser            ${URL}         ${BROWSER}

    
Close the browser
    Capture Page Screenshot
    Close Browser
    
