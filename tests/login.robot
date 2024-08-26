*** Settings ***
Documentation    Login Tests

Resource    ../resources/base.resource

Test Setup    Start session
Test Teardown    Finish session

*** Test Cases ***
Login

    Do login
    Wait Until Page Contains    Minhas tarefas    5