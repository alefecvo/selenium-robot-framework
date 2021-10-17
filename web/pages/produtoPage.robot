*** Settings ***
Library                    SeleniumLibrary

*** Variables ***
${TITLE}                          My Store
${SEARCH_INPUT}                   name=search_query
${SUBMIT_SEARCH_BUTTON}           name=submit_search

*** Keywords ***
Check opened browser
    # Wait Until Element Is Visible    ${TITLE}
    Title Should Be                  ${TITLE}

Input search text "${PRODUCT}"
    Wait Until Element Is Visible    ${SEARCH_INPUT}
    Click Element                    ${SEARCH_INPUT}
    Input Text                       ${SEARCH_INPUT}    ${PRODUCT}    
    
Click submit button
    Click Element                    ${SUBMIT_SEARCH_BUTTON}