***Settings***
Library     AppiumLibrary
Resource    ../utils/environment.robot

***Keywords***
Open Test application
    Open Application    http://localhost:4723/wd/hub      platformName=${ANDROID_PLATFORM_NAME}             deviceName=emulator-5554      
    ...                 appPackage=chat21.android.demo    appActivity=chat21.android.demo.SplashActivity    automatioName=Uiautomator2