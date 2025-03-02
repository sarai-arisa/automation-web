*** Settings ***
Resource    ../keywords/imports.robot


*** Keywords ***
Open Website
    [Arguments]    ${url}    ${browser}
    seleniumLibrary.Open Browser    ${url}    ${browser}
    Maximize Browser Window

Input Credentials
    [Arguments]    ${username}    ${password}
    Input Text    ${txt_username}    ${username}
    Input Text    ${txt_password}    ${password}

Submit Login Form
    Click Button    ${btn_submit}

Verify Successful Login
    Page Should Contain    Secure Area
    Page Should Contain    Welcome to the Secure Area. When you are done click logout below.

Verify Username Not Found
    Element Should Contain    ${error_login_fail}    Your username is invalid!

Verify Password Is Invalid
    Element Should Contain    ${error_login_fail}    Your password is invalid!
