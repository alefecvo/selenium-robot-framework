*** Settings ***
Library                    SeleniumLibrary

*** Variables ***
${SEARCH_INPUT}                        name=search_query
${SUBMIT_SEARCH_BUTTON}                name=submit_search
${PRODUCT_RESULTS}                     xpath=//*[@id="center_column"]/ul/li/div/div[2]/h5/a

${PRICE_PRODUCT_RESULTS}               xpath=//*[@id="center_column"]/ul/li/div/div[2]/div[1]/span

${PRODUCTS_NOT_FOUND_RESULTS}          xpath=//*[@id="center_column"]/p


*** Keywords ***
Check opened browser
    ${TITLE_HOME}=            Get Title
    Title Should Be           ${TITLE_HOME}
    

Input search text "${PRODUCT}"
    Wait Until Element Is Visible    ${SEARCH_INPUT}
    Click Element                    ${SEARCH_INPUT}
    Input Text                       ${SEARCH_INPUT}    ${PRODUCT}    
    
Click submit button
    Wait Until Element Is Visible    ${SUBMIT_SEARCH_BUTTON}
    Click Element                     ${SUBMIT_SEARCH_BUTTON}

Check returned product "${PRODUCT}"
    ${TITLE_HOME}=            Get Title
    Title Should Be           ${TITLE_HOME}
    Wait Until Element Contains        ${PRODUCT_RESULTS}    ${PRODUCT}     

Check returned price product "${PRICE}"
    Wait Until Element Contains        ${PRICE_PRODUCT_RESULTS}    ${PRICE}  

Check returned product page title
    ${TITLE_HOME}=            Get Title
    Title Should Be           ${TITLE_HOME}

Check returned not found product "${MESSAGE}"
    Wait Until Element Is Visible    ${PRODUCTS_NOT_FOUND_RESULTS}
    Element Text Should Be           ${PRODUCTS_NOT_FOUND_RESULTS}    ${MESSAGE} 
    