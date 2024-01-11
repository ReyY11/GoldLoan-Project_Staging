*** Settings ***

Library  SeleniumLibrary
Library  ExcelLibrary


*** Variables ***
${LoginUrl}          https://appuat.satyahousing.com/OmniFinHybridDigitalLOS/#/login/satya
${Browser}           Chrome
${Timer}              3
${Error Message}     Invalid Credentials
${DashboardUrl}       https://appuat.satyahousing.com/OmniFinHybridDigitalLOS/#/home

*** Keywords ***
Open Browser to Login Page
    
              Open Browser        ${LoginUrl}
              Maximize Browser Window
              Set Browser Implicit Wait    ${Timer} 
              
Login Page should pass
         
                  Location Should Be    ${DashboardUrl} 
                  
Login with Invalid Credentials
        [Arguments]               @{Credentials}
         
         Input username              ${Credentials}[0] 
         Input Password               ${Credentials}[1] 
           














    

*** Test Cases ***