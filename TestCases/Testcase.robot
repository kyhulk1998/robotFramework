*** Settings ***
Resource            ../Resources/Resources.robot

Test Teardown       Close Browser


*** Test Cases ***
Submit Form Successfully When Input All Field
    [Documentation]    Input all field and submit form successfully
    [Tags]    success    all_required_field
    Open Webpage    ${url}    ${chrome}
    Input Text Field    ${input_email_field}    kynguyen5698@gmail.com
    Input Text Field    ${input_lastname}    Nguyen
    Input Text Field    ${input_firstname}    Ky
    Select From Dropdown List By Value    ${infoSource_dropdownlist}    Other
    Select All Checkbox Value
    Select Prospect Radio Button
    Input Text Field    ${text_area}    Explainationnnnnnn
    Click Submit Button
    Wait Until Element Is Visible    ${notif_submit_success}    timeout=10

Cannot Submit Without Input Any Field
    [Documentation]    Not input anything and click submit button
    [Tags]    not_success
    Open Webpage    ${url}    ${chrome}
    Click Submit Button
    Element Should Be Visible    ${error_text}
