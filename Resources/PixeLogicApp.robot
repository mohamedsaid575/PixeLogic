*** Settings ***
Resource  ../Resources/PO/RegistrationPage.robot
Resource  ../Resources/PO/ApiRequest.robot


*** Variables ***


*** Keywords ***
HTTP Request API
    ApiRequest.Fetch_APi_request

User Register
    [Arguments]         ${FIRST_NAME}         ${LAST_NAME}         ${MOBILE_NUMBER}         ${EMAIL}         ${PASSWORD}         ${CONFIRM_PASSWORD}
    RegistrationPage.Navigate To Website
    RegistrationPage.Verify Register Page Load
    RegistrationPage.Insert Text First Name                ${FIRST_NAME}
    RegistrationPage.Insert Text Last Name                ${LAST_NAME}
    RegistrationPage.Insert Text Mobile Number                ${MOBILE_NUMBER}
    RegistrationPage.Insert Text Email                ${EMAIL}
    RegistrationPage.Insert Text Passwoed                ${PASSWORD}
    RegistrationPage.Insert Text Confirm Passwoed                ${CONFIRM_PASSWORD}
    RegistrationPage.Click SignUp Button
    RegistrationPage.Verify User Logged In



User Register Failed
    [Arguments]         ${FIRST_NAME}         ${LAST_NAME}         ${MOBILE_NUMBER}         ${EMAIL}         ${PASSWORD}         ${CONFIRM_PASSWORD}
    RegistrationPage.Navigate To Website
    RegistrationPage.Verify Register Page Load
    RegistrationPage.Insert Text First Name                ${FIRST_NAME}
    RegistrationPage.Insert Text Last Name                ${LAST_NAME}
    RegistrationPage.Insert Text Mobile Number                ${MOBILE_NUMBER}
    RegistrationPage.Insert Text Email                ${EMAIL}
    RegistrationPage.Insert Text Passwoed                ${PASSWORD}
    RegistrationPage.Insert Text Confirm Passwoed                ${CONFIRM_PASSWORD}
    RegistrationPage.Click SignUp Button
    RegistrationPage.Verify User Failed login




