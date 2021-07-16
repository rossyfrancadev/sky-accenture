***Settings***
Resource    ../pages/default_page.robot
Resource    ../pages/chat21_login_page.robot
Resource    ../pages/chat21_signup_page.robot
Resource    ../pages/chat21_home_page.robot
Resource    ../utils/environment.robot

Library    FakerLibrary
***Keywords***
Dado que eu estou na inicial e clico em signup
    Log to console    Hello World 
    Clicar            ${SIGNUP}


Quando preencho o formulário com os dados necessários
    log to console    step 2
    ${teste}=         Safe Email
    Escrever          ${SIGNUP_EMAIL}             ${teste}    
    Escrever          ${SIGNUP_FIRST_NAME}        value
    Escrever          ${SIGNUP_LAST_NAME}         value
    Escrever          ${SIGNUP_PASSWD}            value123
    Escrever          ${SIGNUP_REPEAT_SIGNUP_}    value123
    Clicar            ${SIGNUP_BUTTON}

Então devo ser direcionado a tela de home
    Wait until Page Contains Element    ${HOME_BUTTON}
    Page Should Contain Element         ${HOME_BUTTON}

Dado que estou na tela de login
    Wait until Page Contains Element    ${LOGIN}
    Page Should Contain Element         ${LOGIN}

Quando preencher email e senha
    Escrever    ${EMAIL}    ${USER_TEST}[email]
    Escrever    ${PASSW}    ${USER_TEST}[password]

E clicar em login
    Clicar    ${LOGIN}
