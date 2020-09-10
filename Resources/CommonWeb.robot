*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${BROWSER} =  gc

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}
    Set Selenium Speed  0.6s
    set global variable  ${TIMEOUT}  60s
    Maximize Browser Window

End Web Test
    Close Browser