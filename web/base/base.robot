*** Settings ***
Library                    SeleniumLibrary

*** Variables ***
${TIMEOUT}        5
${URL}            http://automationpractice.com/
##Chose the webdriver and set in ${BROWSER}
##headlessfirefox      #firefox       #headlesschrome     #chrome 
${BROWSER}        headlessfirefox


*** Keywords ***
Open the browser
    Set Selenium Timeout    ${TIMEOUT}          
    Open Browser            ${URL}         ${BROWSER}

Close the browser
    Capture Page Screenshot
    Close Browser