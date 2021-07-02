***Settings***
Resource    ../../utils/environment.robot
Library     SeleniumLibrary
***Variables***

***Keywords***

Abrir Navegador
    Open Browser               ${UI_URL_BASE}    ${BROWSER}
    Maximize Browser Window

Fechar Navegador
    Close Browser

Clicar
    [Arguments]                         ${CssSelector}
    Wait Until Page Contains Element    css=${CssSelector}
    Click Element                       css=${CssSelector}