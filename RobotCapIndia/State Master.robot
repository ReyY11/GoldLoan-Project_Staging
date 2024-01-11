*** Settings ***




Library      SeleniumLibrary      Timeout=10s



*** Test Cases ***

    

StateMasterPage
     
          
   
       [Documentation]    Login Test For Capital India
       
        ${default_selenium_timeout} =  Get Selenium Speed 
            ${default_selenium_speed}=  Get Selenium Timeout
    
    #Open Browser

           Open Browser             https://predigi.capitalindia.in/OmniFin/loadLMS.do                 Chrome
     
    Maximize Browser Window
    
        Wait Until Element Is Visible   xpath://*[@id='loginForm']/table/tbody/tr[2]/td[2]/table/tbody/tr[3]/td[2]
        
          # Enter User Id
        Set Focus To Element    xpath://*[@id='userName']
         Input Text     xpath://*[@id='userName']                                  226010
    
        # Enter User Id
     Set Focus To Element          xpath://*[@id='userPassword']
         Input Password            xpath://*[@id='userPassword']            asdf@1111
          
            Sleep    1   
            
               Set Focus To Element       xpath://*[@id='loginForm']/table/tbody/tr[2]/td[2]/table/tbody/tr[8]/td[4]/input
      
      Click Button                 xpath://*[@id='loginForm']/table/tbody/tr[2]/td[2]/table/tbody/tr[8]/td[4]/input       
              
              # Handlening Alert for popup

             Handle Alert    ACCEPT
             
              Sleep  .5
              Set Focus To Element   xpath:/html/body/table[1]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div/a

             Click Link    xpath:/html/body/table[1]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div/a        
              
                #Verifying the title page name
               Title Should Be    Omni Fin - A S Software Services Pvt Ltd
               
                 Sleep  2
          Select frame  leftContant
      # Set Focus To Element  Xpath://*[@id='theMenu']/li[1]/h3/div/a 
       Click Element     Xpath://*[@id='theMenu']/li[1]/h3/div/a  
       Sleep  2
       Set Focus To Element    xpath://*[@id='hrefIda1b1']
        Click Element    xpath://*[@id='hrefIda1b1']
        Sleep  2 
        Unselect Frame
        #Click on Add Button
         Select Frame    content
         Element Text Should Be    xpath://*[@id='stateMasterForm']/fieldset[1]/legend    State Master
            Set Focus To Element  //*[@id='add']  
               Click Element    //*[@id='add']
               
               # Element Should Be Focused  id:stateDes
                #   Element Should Be Focused    id:stateDes
             Sleep  2
             #Set Focus To Element    id:save
              #    Click Element    id:save
                   
               #   sleep  4
                #  Handle Alert    ACCEPT

                  Set Focus To Element    id:stateDes
                    Input Text    id:stateDes    Al Daayen
                    Sleep  2
                    
                    Set Focus To Element  id:countryId
                     Set Focus To Element    id:countryButton
                     Click Element    id:countryButton    
                     Sleep  3
                       Page Should Contain Radio Button    //*[@id="form1"]/table/tbody/tr[3]/td    
                       
                       # Page Should Contain Radio Button    xpath://*[@id='selectRadioBtn']    
                     #Set Focus To Element    xpath://*[@id='form1']
                        

                      #Set Focus To Element   xpath://*[@id='list']/thead/tr/th[1]
                      #Sleep  2
                      #Wait Until Element Is Not Visible    xpath://*[@id='list']/tbody/tr[2]/td[1]
                      #Select Radio Button    selectRadioBtn     4   
                     #Select From List By Value   id:selectRadioBtn    4 
                    #Click Element    id:selectRadioBtn     
                     

   
             #Select Frame   topNav
              #Set Focus To Element  xpath://*[@id='headerdetailsForm']/div[1]/div/table/tbody/tr/td[3]/div/table/tbody/tr/td[2]/table/tbody/tr[1]/td/ul/li[2]/a
               #           Click Element    xpath://*[@id='headerdetailsForm']/div[1]/div/table/tbody/tr/td[3]/div/table/tbody/tr/td[2]/table/tbody/tr[1]/td/ul/li[2]/a    
                   
  

               #Close Browser





             
               