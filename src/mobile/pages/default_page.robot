***Settings***
Library     AppiumLibrary
Resource    ../utils/environment.robot

***Keywords***
Open Test application
    Open Application    ${URL_DEFAULT}                 platformName=${ANDROID_PLATFORM_NAME}    
    ...                 appPackage=${APP_PACKAGE}      deviceName=${DEVICE_NAME}                
    ...                 appActivity=${APP_ACTIVITY}    automatioName=${AUTOMATION_NAME}         

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
