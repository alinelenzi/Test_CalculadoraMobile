
*** Settings ***
Library           AppiumLibrary
Test Teardown     Close Application

*** Variables ***
${SAUCE_USERNAME}    oauth-ditech.infocel-39514
${REMOTE_URL}        https://${SAUCE_USERNAME}:%{SAUCE_ACCESS_KEY}@ondemand.us-west-1.saucelabs.com:443/wd/hub 

*** Test Cases ***
Calcular
    Open Application    ${REMOTE_URL}    platformName=Android    appium:platformVersion=9.0    appium:deviceName=Samsung Galaxy S9 FHD GoogleAPI Emulator    appium:deviceOrientation=portrait    appium:app=storage:filename=Calculator_8.4 (503542421)_APKPure.apk    appium:appPackage=com.google.android.calculator    appium:appActivity=com.android.calculator2.Calculator    browserName=    appium:ensureWebviewsHavePages=${True}    appium:nativeWebScreenshot=${True}    appium:newCommandTimeout=${3600}    appium:connectHardwareKeyboard=${True}
#soma
    ${el1} =    Set Variable     accessibility_id=2
    Click Element    ${el1}
    ${el2} =    Set Variable     accessibility_id=plus
    Click Element    ${el2}
    ${el3} =    Set Variable     accessibility_id=2
    Click Element    ${el3}
    ${el4} =    Set Variable     accessibility_id=equals
    Click Element    ${el4}
#subtração
    ${el5} =    Set Variable     accessibility_id=5
    Click Element    ${el5}
    ${el6} =    Set Variable     accessibility_id=minus
    Click Element    ${el6}
    ${el7} =    Set Variable     accessibility_id=2
    Click Element    ${el7}
    ${el8} =    Set Variable     accessibility_id=equals
    Click Element    ${el8}
#multiplicação
    ${el9} =    Set Variable     accessibility_id=3
    Click Element    ${el9}
    ${el10} =    Set Variable     accessibility_id=multiply
    Click Element    ${el10}
    ${el11} =    Set Variable     accessibility_id=2
    Click Element    ${el11}
    ${el12} =    Set Variable     accessibility_id=equals
    Click Element    ${el12}
#divisão
    ${el13} =    Set Variable     accessibility_id=6
    Click Element    ${el13}
    ${el14} =    Set Variable     accessibility_id=divide
    Click Element    ${el14}
    ${el15} =    Set Variable     accessibility_id=2
    Click Element    ${el15}
    ${el16} =    Set Variable     accessibility_id=equals
    Click Element    ${el16}