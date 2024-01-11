*** Settings ***




Library        SeleniumLibrary




*** Test Cases ***
Demo
    
    
    Open Browser             http://localhost:8100/                 Chrome
     
    Maximize Browser Window
      Set Selenium Implicit Wait    1s
        #Wait Until Element Is Visible   xpath://*[@id='loginForm']/table/tbody/tr[2]/td[2]/table/tbody/tr[3]/td[2]
        Select frame  removeframe
          # Enter User Id
        Set Focus To Element    //*[@id='content']/app-login/div[1]/div[2]/div[2]/div/form/div[1]/input
         Input Text     //*[@id='content']/app-login/div[1]/div[2]/div[2]/div/form/div[1]/input                                 226010
    
        # Enter User Id
     Set Focus To Element         //*[@id='content']/app-login/div[1]/div[2]/div[2]/div/form/div[2]/input
         Input Password            //*[@id='content']/app-login/div[1]/div[2]/div[2]/div/form/div[2]/input            asdf@1111
            

            Sleep    2   
            
               Set Focus To Element   xpath://*[@id='content']/app-login/div[1]/div[2]/div[2]/div/form/div[4]/a
      
      Click Element                xpath://*[@id='content']/app-login/div[1]/div[2]/div[2]/div/form/div[4]/a       
              
       