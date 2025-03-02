*** Settings ***
Resource    ../keywords/imports.robot
Library     RequestsLibrary


*** Test Cases ***
TC01 Get User Success

    Send Get Request    ${URL_API}    200
    Verify Body Reponse
    ...    12
    ...    rachel.howell@reqres.in
    ...    Rachel
    ...    Howell
    ...    https://reqres.in/img/faces/12-image.jpg

TC02 Get User Not Found
    Send Get Request    ${URL_INVALID}    404
    Verify Nou found    {}
