*** Settings ***
Resource            ../keywords/imports.robot

Test Teardown       Close All Browsers


*** Test Cases ***
TC_01_Login success
    [Documentation]    To verify that a user can login successfully when they put a correct username and password.
    Open Website    ${URL}    ${BROWSER}
    Input Credentials    ${USERNAME}    ${PASSWORD}
    Submit Login Form
    Verify Successful Login
    Close Browser

TC_02_Login failed - Password incorrect
    [Documentation]    To verify that a user can login unsuccessfully when they put a correct username but wrong password.
    Open Website    ${URL}    ${BROWSER}
    Input Credentials    ${USERNAME}    ${INVALID_PASSWORD}
    Submit Login Form
    Verify Password Is Invalid
    Close Browser

TC_03_Login failed - Username not found
    [Documentation]    To verify that a user can login unsuccessfully when they put a username that did not exist.
    Open Website    ${URL}    ${BROWSER}
    Input Credentials    ${INVALID_USERNAME}    ${INVALID_PASSWORD}
    Submit Login Form
    Verify Username Not Found
    Close Browser
