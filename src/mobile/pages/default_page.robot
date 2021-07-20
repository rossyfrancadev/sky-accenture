***Settings***
Library     AppiumLibrary
Library     String
Resource    ../utils/environment.robot
***Variables***
${test_case}
***Keywords***
Open Test application
    Open Application    ${URL_DEFAULT}                 platformName=${ANDROID_PLATFORM_NAME}    
    ...                 appPackage=${APP_PACKAGE}      deviceName=${DEVICE_NAME}                
    ...                 appActivity=${APP_ACTIVITY}    automatioName=${AUTOMATION_NAME}         
    Run Keyword If      ${RECORDING}                   Start Screen Recording                   180s


Customer teardown
    ${test_case}=    Remove String    ${TEST NAME}    ${SPACE}    :

    Run Keyword If       ${RECORDING}    Stop Screen Recording    filename=${test_case}
    Log Variables
    Close Application

Close Test Application
    Close Application


Clicar
    [Arguments]                         ${element}
    Wait until Page Contains Element    ${element}
    Click Element                       ${element}

Escrever
    [Arguments]                         ${element}    ${value}
    Wait until Page Contains Element    ${element}
    Input Text                          ${element}    ${value}

Liberar popup
    Clicar    //android.widget.Button[@text="Continue"] 
    Clicar    //android.widget.Button[@text="OK"]

Confirmacao de tela
    [Arguments]                         ${element}
    Wait until Page Contains Element    ${element}    20s
    Page Should Contain Element         ${element}
