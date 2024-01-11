*** Settings ***
 
Library  SeleniumLibrary
#Resource   ../Resources/Resource.robot
*** Variables ***
 
${URL}  http://localhost:8100/
${BROWSER}  chrome 
${TXTBOX_USERNAME}  xpath://*[@id="content"]/app-login/div[1]/div[2]/div[2]/div/form/div[1]/input
${txtbox_password}  xpath://*[@id="content"]/app-login/div[1]/div[2]/div[2]/div/form/div[2]/input
${BUTTON_LOGIN}    xpath://*[@id="content"]/app-login/div[1]/div[2]/div[2]/div/form/div[4]/a
${ERROR}  Bad credentials

*** Test Cases ***
 
Verify Login Fails-wrong username
     
     
      Open browser    ${URL}   ${BROWSER}
      Set Selenium Implicit Wait    1s
          
      Maximize Browser Window
       
                      
      Select frame  removeframe
      Sleep  2    
     
      Input Text    ${txtbox_username}    TTY1
     
      Input Password    ${txtbox_password}    A
      Sleep  2
     
      Click Element   ${BUTTON_LOGIN}    
      Sleep  1
      #Element Should Contain    ${ERROR}    Bad credentials   
      Unselect Frame
          Close Browser  
Verify Login Fails-wrong password
     
     
      Open browser    ${URL}   ${BROWSER}
      Set Selenium Implicit Wait    1s
          
      Maximize Browser Window
      
                      
      Select frame  removeframe
      Sleep  2    
    
      Input Text    ${txtbox_username}    Admin
     
      Input Password    ${txtbox_password}   ASDF
      Sleep  2
   
      Click Element   ${BUTTON_LOGIN}    
      Sleep  1
       Unselect Frame
       Close Browser
     
Verify Login Fails-Wrong username and password
     
     
      Open browser    ${URL}   ${BROWSER}
      Set Selenium Implicit Wait    1s
          
      Maximize Browser Window
      
                      
      Select frame  removeframe
      Sleep  2    
    
      Input Text    ${txtbox_username}    RAHUL
     
      Input Password    ${txtbox_password}    ASDF
      Sleep  2
   
      Click Element   ${BUTTON_LOGIN}    
      Sleep  1
       Unselect Frame
       Close Browser
       
Verify Login Fails-Empty username and password
     
     
      Open browser    ${URL}   ${BROWSER}
      Set Selenium Implicit Wait    1s
          
      Maximize Browser Window
      
                      
      Select frame  removeframe
      Sleep  2    
    
      Input Text    ${txtbox_username}    ${EMPTY}
     
      Input Password    ${txtbox_password}    ${EMPTY}
      Sleep  2
   
      Click Element   ${BUTTON_LOGIN}    
      Sleep  1
       Unselect Frame
       Close Browser 
       
Verify Login Pass-Correct username and password
     
     
      Open browser    ${URL}   ${BROWSER}
      Set Selenium Implicit Wait    1s
          
      Maximize Browser Window
      
                      
      Select frame  removeframe
      Sleep  2    
    
      Input Text    ${txtbox_username}    Admin
     
      Input Password    ${txtbox_password}    a
      Sleep  2
   
      Click Element   ${BUTTON_LOGIN}    
      Sleep  1
       Unselect Frame
        





 