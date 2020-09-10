*** Settings ***
Documentation  PixeLogic Task
Resource  ../Resources/PixeLogicApp.robot
Resource  ../Resources/CommonWeb.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Variables ***
${FIRST_NAME} =  mohammed
${LAST_NAME} =  said
${MOBILE_NUMBER} =  01060484303
${EMAIL} =  msaid1014@yahoo.com
${PASSWORD} =  M123456
${CONFIRM_PASSWORD} =  M123456

*** Test Cases ***
the signUp API request
    [Documentation]  HTTP Request
    [Tags]  HTTP Request
    PixeLogicApp.HTTP Request API


Test Case Register with Valid Credentials
    [Tags]          Smoke-Test, Register-Functionality, Positive
    User Register                     Mohammed         Said         01178451245         m0said1014@gmail.com         Ms123456         Ms123456


Test Case Register with Invalid Credentials
    [Tags]          Smoke-Test, Register-Functionality, Negative
    User Register Failed                     mo         mo         011        mosaid@gmail.com         m1234        m12342









