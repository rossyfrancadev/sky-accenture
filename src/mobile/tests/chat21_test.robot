***Settings***
Library     AppiumLibrary
Resource    ../steps/chat21_steps.robot
Resource    ../pages/default_page.robot

Test Setup        Open Test application
#Test Teardown    Close Application

***Test Cases***

Cenario 01: Criar login na aplicação
    [Tags]                                                   Login
    Dado que eu estou na inicial e clico em signup
    Quando preencho o formulário com os dados necessários
    Então devo ser direcionado a tela de home

Cenario 02: Realizar login na aplicação
    [Tags]                                       Login
    Dado que estou na tela de login
    Quando preencher email e senha
    E clicar em login
    Então devo ser direcionado a tela de home
