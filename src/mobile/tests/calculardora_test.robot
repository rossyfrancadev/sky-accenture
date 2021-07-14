***Settings***
Resource    ../steps/calculadora_steps.robot
#Resource    ../pages/default_page.robot

#Test Setup        Abrir Navegador
#Test Teardown    Custom Teardown
***Test Cases***

Cenario 01: Abrir calculadora e realizar uma soma
    Dado que eu estou na tela principal da calculadora

