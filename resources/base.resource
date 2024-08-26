*** Settings ***
Documentation    Start in this file

Library    AppiumLibrary
Library    libs/mongo.py

*** Variables ***
${API_IP}    192.168.1.7
${BTN_CREATE}    xpath=//*[@resource-id="createTask"]
${BTN_REMOVE}    class=android.widget.Button

*** Keywords ***
Start session

    Open Application   http://localhost:4723
    ...                platformName=Android
    ...                deviceName=Android Emulator
    ...                automationName=UIAutomator2
    ...                app=${EXECDIR}/apps/markx.apk
    ...                uuid=127.0.0.1:6555
    ...                autoGrantPermissions=true

    Wait Until Page Contains    Endereço IP da Api    10
    Wait Until Page Contains    apiIp

Do login

    Click Element    class=android.widget.EditText
    Input Text       class=android.widget.EditText    ${API_IP}    
    Click Element    xpath=//android.view.ViewGroup[@resource-id="signInButton"]

Register new task
    [Arguments]    ${NEW_TASK}
    ${PUT_TASK}    Set Variable    class=android.widget.EditText

    Wait Until Element Is Visible    ${PUT_TASK}
    Click Element    ${PUT_TASK}
    Input Text    ${PUT_TASK}    ${NEW_TASK}
    
    Click Element    ${BTN_CREATE} 

Should have task
    [Arguments]    ${TASK_NAME}

    Wait Until Element Is Visible    //*[@resource-id="taskText"][@text="${TASK_NAME}"]    5

Check task
    [Arguments]    ${TASK_NAME}

    ${CHECK_TASK}    Set Variable    xpath=//*[@text="${TASK_NAME}"]/..
    Click Element    ${CHECK_TASK}

    ${UPDATE_CHECK}    Set Variable    class=android.widget.ImageView
    Wait Until Element Is Visible    ${UPDATE_CHECK}    5
Remove task
    [Arguments]    ${TASK_NAME}

    ${REMOVE_TASK}    Set Variable    xpath=//*[@text="${TASK_NAME}"]/../..//*[@resource-id="removeTask"]

    Click Element    ${REMOVE_TASK}
    Wait Until Element Is Visible    ${BTN_REMOVE}    5
    Click Element    ${BTN_REMOVE}

    Wait Until Page Does Not Contain    ${TASK_NAME}

Finish session
    
    Capture Page Screenshot
    Close Application