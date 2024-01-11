*** Settings ***

Library      SeleniumLibrary

*** Variables ***
 
${LOGIN URL}        http://localhost:8100/
${Browser}      chrome


*** Keywords ***
Start TestCase 
    
   Set Selenium Implicit Wait    2s
    Open Browser            ${LOGIN URL}       ${Browser}
    maximize browser window
    Select frame  removeframe
    Sleep  2
    
#Finish TestCase
       # close all browsers

Open login page
        go to       ${LOGIN URL}

Input username
  [Arguments]     ${username}
        input text      xpath://*[@id="content"]/app-login/div[1]/div[2]/div[2]/div/form/div[1]/input      ${username}

Input pass
        [Arguments]     ${password}
        input text      xpath://*[@id="content"]/app-login/div[1]/div[2]/div[2]/div/form/div[2]/input     ${password}

Click login button
        click element    xpath://*[@id="content"]/app-login/div[1]/div[2]/div[2]/div/form/div[4]/a



     



 