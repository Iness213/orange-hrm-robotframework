*** Settings ***
Library           SeleniumLibrary
Library           OperatingSystem
Variables     ../../Resources/Locators/login.py
Variables    ../../Resources/TestData/login.py


*** Variables ***
${URL}             https://opensource-demo.orangehrmlive.com/     # OrangeHRM URL
${BROWSER}         chrome





*** Keywords ***
Open system
    open browser    ${url}    ${browser} 
    Maximize Browser Window     
Enter credentials
    [Arguments]    ${username}    ${password}
    wait until page contains element    ${usernameInput}   timeout=40
    input text    ${usernameInput}     ${username}
    input password    ${passwordInput}     ${password}
Click submit button
    click button    ${loginButton}
    Wait Until Element Is Visible    ${dashboard}    timeout=10   
    Element Should Be Visible    ${dashboard}
     

Login to OrangeHRM
    [Arguments]    ${username}    ${password}
    Open system
    Enter credentials    ${username}    ${password}
    Click submit button
