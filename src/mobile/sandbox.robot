***Settings***
Library    AppiumLibrary
***Variables***
${ANDROID_AUTOMATION_NAME}     emulator-5554
${ANDROID_APP}                 ${CURDIR}/
${ANDROID_PLATFORM_NAME}       Android
${ANDROID_PLATFORM_VERSIOM}    %{ANDROID_PLATFORM_VERSIOM=11}

***Test Cases**

Should open application corretly
    Open test application

***Keywords***

Open test application
    Log to console            Test OK
    Start Screen Recording    180s




