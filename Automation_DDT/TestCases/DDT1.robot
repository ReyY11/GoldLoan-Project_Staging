*** Settings ***

Library           SeleniumLibrary
Resource    ../Resources/Login_resources.robot
    

Suite Setup  Login_resources.Start TestCase

#Suite Teardown   Login_resources.Finish TestCase
Test Template   Invalid login


*** Test Cases ***

 Right username empty password      admin                  ${EMPTY}
 Right username wrong password      admin                    xyx
 Wrong username right password      Rahul                    a
 Wrong username empty password      Rahul                   ${EMPTY}
 Wrong username wrong password      Rahul                    xyx


*** Keywords ***
   #Import Resource    ../Resources/Login_resources.robot
 Invalid login
  
       [Arguments]     ${username}     ${password}
       Input username      ${username}
       Input pass      ${password}
       Click login button
      