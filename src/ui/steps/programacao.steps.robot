***Settings***
Library     SeleniumLibrary
Resource    ../pages/home.page.robot
Resource    ../pages/default.page.robot

***Variables***
${titulo}
${horario}
***Keywords

Dado que eu estou na tela de home
    Title Should Be    ${TITULO_DA_PAGINA}

E fecho o modal-dialog
    Clicar    ${MODAL_DIALOG_FECHAR}

E Seleciono o menu "${OPCAO_MENU}"
    Element Attribute Value Should Be    css=${PROGRAMACAO}    innerText    ${OPCAO_MENU}
    Clicar                               ${PROGRAMACAO}

Quando selecionar a programação que esteja passando na hora

    Scroll Element Into View    css=${GRADE_PAINEL}
    Mouse over                  css=${PROGRAMA_ATUAL}
    ${element}                  Get WebElement           css=${TITULO_PROGRAMA}
    ${titulo}=                  Get Element Attribute    ${element}                 innerText
    ${element}=                 Get WebElement           css=${HORARIO_PROGRAMA}
    ${horario}=                 Get Element Attribute    ${element}                 innerText

    Clicar                              ${PROGRAMA_ATUAL}
    Wait Until Page Contains Element    css=${MODAL_PROGRAMA}

Então devo ter o título e o horário similar na descrição do programa selecionado

    ${modal_element}    Get WebElement           css=${TITULO_MODAL}
    ${titulo_modal}     Get Element Attribute    ${modal_element}       innerText

    ${modal_element}=    Get WebElement    css=${HORARIO_MODAL}
    ${horario_modal}     Get Text          ${modal_element}

    Should Be Equal As Strings    ${titulo}     ${titulo_modal}
    Should Be Equal As Strings    ${horario}    ${horario_modal}