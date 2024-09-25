*** Settings ***
Resource    ../../Pages/GUI/admin.robot
Resource    ../../Pages/GUI/login.robot

Suite Setup    Login to OrangeHRM    ${usernameValue}    ${passwordValue}
*** Test Cases ***

TC1-Edit user  
    Open admin page
    Scroll down in page
    Click edit button
    Edit user record
    Verify edit user success
TC2-Search for user
    Open admin page
    Enter search filter
    Submit search