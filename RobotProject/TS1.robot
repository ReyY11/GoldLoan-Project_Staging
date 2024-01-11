*** Settings ***

Library    SeleniumLibrary




*** Test Cases ***
        

TC1
    
      Log  Rahul
      

    Log    Hello World.......
    
FirstSeleniumTest
    

          Open Browser                   https://www.google.com                    Chrome
          
           Set Browser Implicit Wait    10  
          

   
                     
                     
                     Input Text               name=q                          Automation Step By Step  
              
                Press Keys                  name=q                                   ENTER


        

          Sleep    3    
               
          Close Browser   

           Log                                   Test Completed



           
 LoginTest
             
       [Documentation]    Login Test For Satya
    

     Open Browser                http://115.124.101.16:9090/OmniFinHybridDigitalLOS/#/login/satya                 Chrome
      
     Sleep    3     
     

       
     Input Text  xpath: //*[@id="content"]/app-login/div[1]/div[2]/div[2]/div/form/div[1]/input              EC151
    
     
      Input Password             xpath: //*[@id="content"]/app-login/div[1]/div[2]/div[2]/div/form/div[2]/input             a
    
            Sleep    3   
            
          #Click Button    //*[@id="content"]/app-login/div[1]/div[2]/div[2]/div/form/div[3]/label     
      
      Click Link     xpath: //*[@id="content"]/app-login/div[1]/div[2]/div[2]/div/form/div[4]/a       
      
        
          
     Sleep    2    
         Close Browser   

           Log                                   Test Completed
           













