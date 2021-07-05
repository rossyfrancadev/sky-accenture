***Settings***
Resource    ../pages/home_page.robot
Resource    ../pages/default_page.robot
Resource    ../pages/programacao_page.robot

***Variables***
${titulo}
${horario}
***Keywords***

Dado que eu estou na tela de home
    Title Should Be    ${TITULO_DA_PAGINA_HOME}

E fecho o modal-dialog
    Clicar    ${MODAL_DIALOG_FECHAR}

E Seleciono o menu "${OPCAO_MENU}"
    Element Attribute Value Should Be    css=${PROGRAMACAO}    innerText    ${OPCAO_MENU}
    Clicar                               ${PROGRAMACAO}

Quando selecionar a programação que esteja passando na hora
    Wait Until Page Contains Element    css=${GRADE_PAINEL}
    Scroll Element Into View            css=${GRADE_PAINEL}
    Mouse over                          css=${PROGRAMA_ATUAL}
    ${element}                          Get WebElement           css=${TITULO_PROGRAMA}
    ${titulo}                           Get Element Attribute    ${element}                 innerText
    ${element}=                         Get WebElement           css=${HORARIO_PROGRAMA}
    ${horario}                          Get Element Attribute    ${element}                 innerText

    Wait Until Keyword Succeeds         30s                      2s    Clicar    ${PROGRAMA_ATUAL}
    Wait Until Page Contains Element    css=${MODAL_PROGRAMA}

Então devo ter o título e o horário similar na descrição do programa selecionado
    Wait Until Page Contains Element    css=${TITULO_MODAL}

    ##Asserção oscila um erro de não pegar o valor da variável título e horário modal
    Element Text Should be    css=${TITULO_MODAL}    ${titulo}           
    Element Text Should be    css=${HORARIO_MODAL}       ${horario}