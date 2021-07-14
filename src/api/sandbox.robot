***Settings***
Resource    ./http.robot
Resource    ../utils/services.robot

***Test Cases***

Teste Get
    ${response}       HttpGet                ${WEATHER}
    log to console    ${response["body"]}