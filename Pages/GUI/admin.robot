*** Settings ***
Library           SeleniumLibrary
Library           OperatingSystem
Variables     ../../Resources/Locators/admin.py

*** Keywords ***
Open admin page 
    Wait Until Page Contains Element    ${adminItem}
    Click Element    ${adminItem}
    Sleep    2
Scroll down in page 
    Wait Until Page Contains Element    ${scrolldownItem}
    Scroll Element Into View    ${scrolldownItem}
    Sleep    2
Click edit button 
    Wait Until Page Contains Element    ${editOption}
    Click Element    ${editOption} 
Edit user record
    Wait Until Page Contains Element    ${editAdminLabel}
    Click Element    ${userStatus}
    Click Element    ${statusChoice}
    Click Element    ${submitButton}
Verify edit user success 
    Wait Until Page Contains Element    ${saveAssertion}

Enter search filter 
    Wait Until Page Contains Element    ${userRole}
    Click Element    ${userRole}
    Click Element    ${adminChoice}
Submit search 
    Click Element    ${submitButton}

Verify search success
    