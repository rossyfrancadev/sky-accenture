***Settings***
Resource    ../pages/home_page.robot
Resource    ../pages/default_page.robot
Resource    ../pages/programacao_page.robot

***Variables***
${titulo}
${horario}
${t_modal}
${h_modal}
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

    ${titulo}            Get Text      css=${TITULO_PROGRAMA} 
    ${horario}           Get Text      css=${HORARIO_PROGRAMA}
    Set Test Variable    ${titulo}
    Set Test Variable    ${horario}

    Wait Until Keyword Succeeds         30s                      2s    Clicar    ${PROGRAMA_ATUAL}
    Wait Until Page Contains Element    css=${MODAL_PROGRAMA}

Então devo ter o título e o horário similar na descrição do programa selecionado
    Wait Until Page Contains Element    css=${TITULO_MODAL}
    Sleep   3s
    ${t_modal}                          Get Text               css=${TITULO_MODAL}
    ${h_modal}                          Get Text               css=${HORARIO_MODAL}
    Set Test Variable                   ${t_modal}
    Set Test Variable                   ${h_modal}

    Should Be Equal As Strings    ${t_modal}    ${titulo} 
    Should Be Equal As Strings    ${h_modal}    ${horario} 

