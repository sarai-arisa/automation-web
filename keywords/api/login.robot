*** Settings ***
Resource    ../../keywords/imports.robot
Library     RequestsLibrary
Library     Collections
Library     JSONLibrary


*** Keywords ***
Send Get Request
    [Arguments]    ${url}    ${expect_status_code}
    ${response}=    GET    ${url}    expected_status=${expect_status_code}
    Set Global Variable    ${response_actual}    ${response}

    # Log To Console    ${response_actual.status_code}
    # Log To Console    ${response_actual.json()["data"]["id"]}
    # Log To Console    ${response_actual.json()["data"]["email"]}
    # Log To Console    ${response_actual.json()["data"]["first_name"]}
    # Log To Console    ${response_actual.json()["data"]["last_name"]}
    # Log To Console    ${response_actual.json()["data"]["avatar"]}


Verify Body Reponse
    [Arguments]    ${expect_id}    ${expect_email}    ${expect_first_name}    ${expect_last_name}    ${expect_avatar}
    ${actual_id}=    Convert To String    ${response_actual.json()["data"]["id"]}
    Should Be Equal    ${actual_id}    ${expect_id}
    Should Be Equal    ${response_actual.json()["data"]["email"]}    ${expect_email}
    Should Be Equal    ${response_actual.json()["data"]["first_name"]}    ${expect_first_name}
    Should Be Equal    ${response_actual.json()["data"]["last_name"]}    ${expect_last_name}
    Should Be Equal    ${response_actual.json()["data"]["avatar"]}    ${expect_avatar}

Verify Nou found
    [Arguments]  ${expect_body} 
         ${actual_body}=    Convert To String    ${response_actual.json()}
         Should Be Equal    ${actual_body}     ${expect_body}
        
        
    
