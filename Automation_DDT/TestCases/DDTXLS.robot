*** Settings ***

Library           SeleniumLibrary
Resource    ../Resources/Login_resources.robot
#Library    DataDriver  ../TestData/DDTXLS.xlsx    encoding="ISO-8859-1"
Library    DataDriver     ../TestData/DDTXLS.xlsx      encoding="ISO-8859-1"
#Library  DataDriver  file=C:/Users/rahul.yadav/Workspace1/Automation_DDT/TestData/DDTXLS.xlsx   
Library  String
Suite Setup  Login_resources.Start TestCase
#Suite Teardown   Login_resources.Finish TestCase
Test Template   Invalid login


*** Test Cases *** 

#Login with user ${username} and password ${password}    Default    UserData         
Login with user       1      1  
   
       


***** *Keywords* *****
 Invalid login
  
       [Arguments]         ${username}     ${password}    
       Input username      ${username}
       Input pass      ${password}
       Click login button
      

     



