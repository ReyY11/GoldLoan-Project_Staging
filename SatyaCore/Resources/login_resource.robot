*** Settings ***

Library             SeleniumLibrary
Resource  ../Resources/login_resources.robot
Suite Setup  Open My Browser
Suite Teardown  close browsers
Test Template   Invalid Login

*** Test Cases ***      username    password
 Right user empty pwd   EC151   ${Empty}
  Right user wrong pwd   EC151    xyz
  Wrong user right pwd   EC1511   a
  Wrong user empty pwd   EC1511   ${Empty}
  Wrong user wrong pwd   EC1511   564

*** Keywords ***
 Invalid Login
  [Arguments]   ${username}  ${password}  ${error_msg}
 Input username    ${username}
 Input pwd        ${password}
 Click Login Button
    Error message should be visible    ${error_msg}


