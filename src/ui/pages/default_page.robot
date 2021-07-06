***Settings***
Resource    ../../utils/environment.robot
Library     SeleniumLibrary                  run_on_failure=Nothing
***Variables***

***Keywords***

Abrir Navegador
    Open Browser               ${UI_URL_BASE}    ${BROWSER}
    Maximize Browser Window

Fechar Navegador
    Close Browser
    Run Keyword And Continue On Failure    Log Variables    INFO

Clicar
    [Arguments]                         ${CssSelector}
    Wait Until Page Contains Element    css=${CssSelector}
    Click Element                       css=${CssSelector}


Custom Teardown
    #Run Keyword If Test Failed    Fail    FALHOWW

    Fechar Navegador

Custom Setup
    ${headless}=      Evaluate               ${HEADLESS} == False
    Run Keyword if    ${headless}            
    ...               Pass Execution         ${BROWSER}              headlesschrome
    ...               Set Global Variable    ${BROWSER}
    ...               ELSE IF
    ...               ${BROWSER}             chrome
    ...               Set Global Variable    ${BROWSER}
    END

    Abrir Navegador