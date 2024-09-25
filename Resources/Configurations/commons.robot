*** Settings ***
Library         SeleniumLibrary
Library         RequestsLibrary
Library         Collections
Library         OperatingSystem
Library         JSONLibrary



*** Keywords ***
Load Test Data JSON File
    [Arguments]    ${jsonFilePath}
    ${testDataFile}    Load Json From File    ${EXECDIR}/Resources/TestData/${jsonFilePath}    encoding=UTF-8
    Set Suite Variable    ${testDataFile}