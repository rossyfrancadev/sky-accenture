***Settings***
Library     AppiumLibrary
Resource    ./http.robot
Resource    ../utils/services.robot
***Keywords***

Do something and success
    Log to console    success

***Test Cases***

Teste Get
   # ${response}       HttpGet                ${WEATHER}
    #log to console    ${response["body"]}
    ${success}=       Run Keyword and Return Status    Get Element    //xpath 
    log to console    ${success}
