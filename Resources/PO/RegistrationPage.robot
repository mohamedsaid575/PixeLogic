*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${WEBSITE_URL} =    https://www.phptravels.net/register
${REGISTER_PAGE_VERIFY} =  xpath=//div//h3[contains(text(),"Sign Up")]
${FIRST_NAME_LOCATOR} =  xpath=//input[@name="firstname"]
${LAST_NAME_LOCATOR} =  xpath=//input[@name="lastname"]
${MOBILE_NUMBER_LOCATOR} =  xpath=//input[@name="phone"]
${EMAIL_LOCATOR} =  xpath=//input[@name="email"]
${PASSWORD_LOCATOR} =  xpath=//input[@name="password"]
${CONFIRM_PASSWORD_LOCATOR} =  xpath=//input[@name="confirmpassword"]
${SIGNUP_LOCATOR} =  xpath=//button[contains(text()," Sign Up")]
${Success_login_msg} =  xpath=//*[contains(text(),'Hi,')]
${Failed_login_msg} =  xpath=//*[contains(text(),'Hi,')]


*** Keywords ***
Navigate To Website
    Go To  ${WEBSITE_URL}

Verify Register Page Load
    Wait Until Element Is Enabled  ${REGISTER_PAGE_VERIFY}  ${TIMEOUT}
    Page Should Contain Element  ${REGISTER_PAGE_VERIFY}

Insert Text First Name
    [Arguments]         ${FIRST_NAME_VALUE}
    Wait Until Element Is Enabled  ${FIRST_NAME_LOCATOR}  ${TIMEOUT}
    Input Text  ${FIRST_NAME_LOCATOR}  ${FIRST_NAME_VALUE}

Insert Text Last Name
    [Arguments]         ${LAST_NAME_VALUE}
    Wait Until Element Is Enabled  ${LAST_NAME_LOCATOR}  ${TIMEOUT}
    Input Text  ${LAST_NAME_LOCATOR}  ${LAST_NAME_VALUE}

Insert Text Mobile Number
    [Arguments]         ${MOBILE_NUMBER_VALUE}
    Wait Until Element Is Enabled  ${MOBILE_NUMBER_LOCATOR}  ${TIMEOUT}
    Input Text  ${MOBILE_NUMBER_LOCATOR}  ${MOBILE_NUMBER_VALUE}

Insert Text Email
    [Arguments]         ${EMAIL_VALUE}
    Wait Until Element Is Enabled  ${EMAIL_LOCATOR}  ${TIMEOUT}
    Input Text  ${EMAIL_LOCATOR}  ${EMAIL_VALUE}

Insert Text Passwoed
    [Arguments]         ${PASSWORD_VALUE}
    Wait Until Element Is Enabled  ${PASSWORD_LOCATOR}  ${TIMEOUT}
    Input Text  ${PASSWORD_LOCATOR}  ${PASSWORD_VALUE}

Insert Text Confirm Passwoed
    [Arguments]         ${CONFIRM_PASSWORD_VALUE}
    Wait Until Element Is Enabled  ${CONFIRM_PASSWORD_LOCATOR}  ${TIMEOUT}
    Input Text  ${CONFIRM_PASSWORD_LOCATOR}  ${CONFIRM_PASSWORD_VALUE}
    capture page screenshot     selenium-screenshot-{index}.png

Click SignUp Button
    Wait Until Element Is Enabled  ${SIGNUP_LOCATOR}  ${TIMEOUT}
    Click Button  ${SIGNUP_LOCATOR}

Verify User Logged In                                   #Assert that Success Login msg displays
    wait until page contains element         ${success_login_msg}       ${TIMEOUT}


Verify User Failed login                                #Assert that Failed Login msg displays
    wait until page contains element         ${Success_login_msg}       ${TIMEOUT}











