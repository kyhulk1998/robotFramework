*** Settings ***
Resource    Resources.robot


*** Keywords ***
Open Webpage
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Element Should Be Visible    ${logo_page}

Input Text Field
    [Arguments]    ${locator}    ${text}
    Wait Until Element Is Visible    ${locator}    timeout=10    error='Not see ${locator} field'
    Input Text    ${locator}    ${text}
    ${value}=    Get Text    ${locator}
    Should Be Equal As Strings    ${value}    ${text}

Select From Dropdown List By Value
    [Arguments]    ${locator}    ${value}
    Select From List By Value    ${locator}    ${value}

Select All Checkbox Value
    Element Should Be Visible    ${printing_checkbox}
    Element Should Be Visible    ${logistic_checkbox}
    Element Should Be Visible    ${advertisement_checkbox}

    Checkbox Should Not Be Selected    ${printing_checkbox}
    Checkbox Should Not Be Selected    ${logistic_checkbox}
    Checkbox Should Not Be Selected    ${advertisement_checkbox}

    Click Element    ${printing_checkbox}
    Click Element    ${logistic_checkbox}
    Click Element    ${advertisement_checkbox}

    Checkbox Should Be Selected    ${printing_checkbox}
    Checkbox Should Be Selected    ${logistic_checkbox}
    Checkbox Should Be Selected    ${advertisement_checkbox}

Select Prospect Radio Button
    Element Should Be Visible    ${prospect_radio_btn}
    Click Element    ${prospect_radio_btn}

Select Partner Radio Button
    Element Should Be Visible    ${partner_radio_btn}
    Click Element    ${partner_radio_btn}

Click Submit Button
    Click Button    ${submit_btn}
