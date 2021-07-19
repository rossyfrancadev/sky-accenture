***Settings***
Resource    ../pages/default_page.robot
Resource    ../pages/chat21_login_page.robot
Resource    ../pages/chat21_signup_page.robot
Resource    ../pages/chat21_home_page.robot
Resource    ../utils/environment.robot

Library    FakerLibrary
***Keywords***
Dado que eu estou na inicial e clico em signup
    ${success}=       Run Keyword and Return Status    Get WebElement    //android.widget.Button[@text="Continue"]
    Run Keyword If    ${success}                       Liberar popup
    #Clicar    //android.widget.Button[@text="Not now"]
    Clicar    ${SIGNUP}


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
    Confirmacao de tela    ${HOME_BUTTON}    


Dado que estou na tela de login
    ${success}=       Run Keyword and Return Status    Get WebElement    //android.widget.Button[@text="Continue"]
    Run Keyword If    ${success}                       Liberar popup

    Confirmacao de tela    ${LOGIN}


Quando preencher email e senha
    Escrever    ${EMAIL}    ${USER_TEST}[email]
    Escrever    ${PASSW}    ${USER_TEST}[password]

E clicar em login
    Clicar    ${LOGIN}
