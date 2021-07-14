***Settings***
Library     REST
Resource    ../utils/environment.robot

***Variables***

***Keywords***


HttpGet
    [Arguments]    ${endpoint}
    ${params}      Create Dictionary    appid=${API_KEY}                q=RIo de Janeiro
    ${response}    GET                  ${URL_API_TEST}${endpoint}    query=${params}
    [Return]       ${response}