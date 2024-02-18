*** Settings ***
Resource    Resources.robot


*** Variables ***
${chrome}                       Chrome
${url}                          https://raksul.github.io/recruit-qa-engineer-work-sample/
${input_email_field}            input[id='form_item_email']
${input_lastname}               input[id='form_item_lastName']
${input_firstname}              input[id='form_item_firstName']
${infoSource_dropdownlist}      //span[@class='ant-select-selection-search']//input
${printing_checkbox}            //input[contains(@class,'ant-checkbox') and ../..//span[text()='Printing']]
${logistic_checkbox}            //input[contains(@class,'ant-checkbox') and ../..//span[text()='Logistics']]
${advertisement_checkbox}       //input[contains(@class,'ant-checkbox') and ../..//span[text()='Advertisement']]
${prospect_radio_btn}           //input[contains(@class,'ant-radio') and ../..//span[text()='Prospect']]
${partner_radio_btn}            //input[contains(@class,'ant-radio') and ../..//span[text()='Partner']]
${reseller_radio_btn}           //input[contains(@class,'ant-radio') and ../..//span[text()='Reseller']]
${vendor_radio_btn}             //input[contains(@class,'ant-radio') and ../..//span[text()='Vendor']]
${other_radio_btn}              //input[contains(@class,'ant-radio') and ../..//span[text()='Other']]
${text_area}                    //textarea[id='form_item_explanation']
${submit_btn}                   //button/span[text()='Submit']
${logo_page}                    img[class='logo']
${error_text}                   //div[@class='ant-form-item-explain-error']
${notif_submit_success}         //div[text()='Your inquiry has been submitted successfully!']
