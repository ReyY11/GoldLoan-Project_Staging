*** Settings ***

Library           SeleniumLibrary
Resource    ../Resources/Login_resources.robot
Library   DataDriver  ../TestData/DDT-CSV.csv

Suite Setup  Login_resources.Start TestCase

#Suite Teardown   Login_resources.Finish TestCase
Test Template   Invalid login


*** Test Cases ***
#Login Test with Excel File    ${username}       ${password}    
Login with user         TC1      TC2      

*** Keywords ***
  
Invalid login
  
       [Arguments]     ${username}     ${password}
       Input username      ${username}
       Input pass      ${password}
       Click login button
      