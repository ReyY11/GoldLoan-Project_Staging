*** Settings ***

Library    SeleniumLibrary


*** Test Cases ***




CoreLogin
      
             [Documentation]    Login Test For Core
    

     Open Browser                http://115.124.101.16:9090/OmniFin                 Chrome
      
     Sleep    3     
     
        
       
     Input Text              xpath: //*[@id="userName"]                    EC151
    
     
      Input Password             //*[@id="userPassword"]             a
    
            Sleep    3   
            
          #Click Button    //*[@id="content"]/app-login/div[1]/div[2]/div[2]/div/form/div[3]/label     
      
     Click Link     //*[@id="loginForm"]/table/tbody/tr[2]/td[2]/table/tbody/tr[8]/td[4]/input     
      
        
          
     Sleep    2    
         Close Browser   

           Log                                   Test Completed
           


   
    