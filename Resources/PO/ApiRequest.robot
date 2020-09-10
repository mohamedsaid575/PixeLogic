*** Settings ***
Library  RequestsLibrary


*** Variables ***
${WEBSITE_URL} =    https://www.phptravels.net/register


*** Keywords ***
Fetch_APi_request
    create session  FetchData  ${WEBSITE_URL}
    ${Response} =  get request  FetchData  /register
    log to console  ${Response.status_code}
    log to console  ${Response.content}









