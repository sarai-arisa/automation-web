*** Variables ***
${txt_username}         id=username
${txt_password}         id=password
${btn_submit}           css=button[type="submit"]
${error_login_fail}     //div[@id='flash']

${URL}                  http://the-internet.herokuapp.com/login
${BROWSER}              chrome

${USERNAME}             tomsmith
${INVALID_USERNAME}     tomholland
${PASSWORD}             SuperSecretPassword!
${INVALID_PASSWORD}     Password!
