*** Variables ***
${BASE_URL}    https://reqres.in/api
${ENDPOINT}    /users/12
${INVALID_ENDPOINT}    /users/1234
${URL_API}         ${BASE_URL}${ENDPOINT}
${URL_INVALID}    ${BASE_URL}${INVALID_ENDPOINT}
