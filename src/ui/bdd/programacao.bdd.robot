***Settings***
Resource  ../steps/programacao.steps.robot
Resource  ../pages/default.page.robot

Test Setup  Abrir Navegador
***Test Cases***

Cenario 01: Confirmar programação atual
    Dado que eu estou na tela de home
    E fecho o modal-dialog
    E Seleciono o menu "Programação"
    Quando selecionar a programação que esteja passando na hora
    Então devo ter o título e o horário similar na descrição do programa selecionado
