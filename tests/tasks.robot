*** Settings ***
Documentation    Task test suite

Resource    ${EXECDIR}/resources/base.resource

Test Setup    Start session
Test Teardown    Finish session

*** Test Cases ***
Register new task

    ${TASK}    Set Variable    Estudar para certificacao AWS
    Remove task from database    ${TASK}
    
    Do login
    Register new task    ${TASK}
    Should have task    ${TASK}
Check task
    [Tags]    check

    ${TASK}    Set Variable    Faltar na academia
    Remove task from database    ${TASK}

    Do login
    Register new task    ${TASK}
    Should have task    ${TASK}

    Check task    ${TASK}
    
Remove task
    [Tags]    remove

    ${TASK}    Set Variable    Faltar na academia
    Remove task from database    ${TASK}

    Do login
    Register new task    ${TASK}
    Should have task    ${TASK}

    Remove task    ${TASK}