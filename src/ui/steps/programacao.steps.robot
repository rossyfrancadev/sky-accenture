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

    Scroll Element Into View    css=div.channel-list-item
    Mouse over                  css=div.schedule-inner.schedule-live
    ${element}                  Get WebElement                          css=div.schedule-inner.schedule-live > div.program-schedule-content > h2.program-schedule-title
    ${titulo}=                  Get Element Attribute                   ${element}                                                                                                                    innerText
    ${element}=                 Get WebElement                          css=div.schedule-inner.schedule-live > div.program-schedule-content > div.program-schedule-info > div.program-duration > p
    ${horario}=                 Get Element Attribute                   ${element}                                                                                                                    innerText

    Clicar                              div.schedule-inner.schedule-live
    Wait Until Page Contains Element    css=div.sky-modal-program-title > h2



Então devo ter o título e o horário similar na descrição do programa selecionado

    ${modal_element}    Get WebElement           css=div.sky-modal-program-title > h2
    ${titulo_modal}     Get Element Attribute    ${modal_element}                        innerText

    ${modal_element}=    Get WebElement    css=div.sky-modal-program-date-time > span
    ${horario_modal}     Get Text          ${modal_element}

    Should Be Equal As Strings    ${titulo}     ${titulo_modal}
    Should Be Equal As Strings    ${horario}    ${horario_modal}