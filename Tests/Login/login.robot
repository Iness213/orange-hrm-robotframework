*** Settings ***
Resource    ../../Pages/GUI/login.robot


*** Test Cases ***
Login to OrangeHRM
    Login to OrangeHRM    ${usernameValue}    ${passwordValue}

    
    
      