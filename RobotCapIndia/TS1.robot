*** Settings ***




Library        SeleniumLibrary



*** Test Cases ***

    

LoginPage
     
          
   
       [Documentation]    Login Test For Capital India
    
    #Open Browser

           Open Browser             https://predigi.capitalindia.in/OmniFin/loadLMS.do                 Chrome
     
    Maximize Browser Window
    
        Wait Until Element Is Visible  xpath://*[@id='loginForm']/table/tbody/tr[2]/td[2]/table/tbody/tr[3]/td[2]
        
          # Enter User Id
        Set Focus To Element    xpath: //*[@id='userName']
         Input Text     xpath: //*[@id='userName']                                  226010
    
        # Enter User Id
     Set Focus To Element          xpath://*[@id='userPassword']
         Input Password            xpath://*[@id='userPassword']            asdf@1111
           
            Sleep    1   
            
              
      Set Focus To Element       xpath://*[@id='loginForm']/table/tbody/tr[2]/td[2]/table/tbody/tr[8]/td[4]/input
      
      Click Button                 xpath://*[@id='loginForm']/table/tbody/tr[2]/td[2]/table/tbody/tr[8]/td[4]/input       
              
              # Handlening Alert for popup

             Handle Alert    ACCEPT  

             # Title Should Be    Omni Fin - A S Software Services Pvt Ltd                
                sleep  .5
              Set Focus To Element   xpath:/html/body/table[1]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div/a

             Click Link    xpath:/html/body/table[1]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/div/a        
              
                #Verifying the title page name
               Title Should Be    Omni Fin - A S Software Services Pvt Ltd 
               
          
              # Using select frame for selecting Common Masters
        Select frame  leftContant
      # Set Focus To Element  Xpath://*[@id='theMenu']/li[1]/h3/div/a 
       Click Element     Xpath://*[@id='theMenu']/li[1]/h3/div/a  
       Sleep  2
       Set Focus To Element    xpath://*[@id='hrefIda1b0']
        Click Element    xpath://*[@id='hrefIda1b0']
        Sleep  2
          Unselect Frame
          # Using Select frame for Focus on Country Master
          Select Frame    content
          # verify visible text
            Element Text Should Be    xpath://*[@id='countryMasterForm']/fieldset[1]/legend    Country Master           
            #Focus on Add Button
           
          Set Focus To Element    id:add
           Click Element           id:add 
           Element Text Should Be    xpath://*[@id='countryMasterForm']/fieldset[1]/legend    Country Master
              #Verify Cursor Focus----Country description
             Element Should Be Focused    id:countryDes
             Sleep  2
             # Verifying Alert message without entering data
             Set Focus To Element    id:save
                  Click Element    id:save
                # Handle Alert          <* Country Description is required.\n * Currency is required.>    
                  #Alert Should Be Present        * Country Description is required.
                  #Alert Should Be Present         * Currency is required.    
                  sleep  4
                  
                  Handle Alert    ACCEPT
                     # Set Focus on Country Description and input the data
                     Element Should Be Focused    id:countryDes
                     Input Text    id:countryDes        Algeria
                     sleep  1
                     # Set focus on Save button
                     Set Focus To Element    id:save
                     Click Element    id:save
                      sleep  1
                      # Verifying Visible Alert Message
                     Alert Should Be Present         * Currency is required. 
                             Sleep  5
                             #focus on Country description and clear the existing data
                        Set Focus To Element    id:countryDes
                        Clear Element Text    id:countryDes
                                       
                                sleep  2 
                                #Again focus on Country description and input 20 alphanumeric data           
                   Set Focus To Element    id:countryDes                  
                   Input Text    id:countryDes        AlgerianSociety12345 
                     Sleep  2
                     #Clear the data
                     Clear Element Text    id:countryDes
                     #Again focus on Country description and input 60 alphanumeric data---system will take only 50 alphanumeric value
                   Set Focus To Element    id:countryDes                  
                   Input Text    id:countryDes        AlgerianSociety12345AlgerianSociety12345AlgerianSociety12345
                         Sleep  2
                         #Focus on Country id and input numbers instead of character
                Set Focus To Element     id:currencyId    
                  Input Text    id:currencyId     567
                  Sleep  1
                  #Focus on Country status
                 Set Focus To Element    id:countryStatus
                  Checkbox Should Be Selected    id:countryStatus
                  Sleep  1
                  #Focus on Save button
                  Set Focus To Element    id:save
                  Click Element    id:save  
                        Sleep  4
                   #Wait Until Page Contains    * Currency is invalid.                 
                  Handle Alert    ACCEPT
                  Sleep  2
                  # Again Focus on Country Description
                   Set Focus To Element    id:countryDes
                   Clear Element Text    id:countryDes
                  #Again Focus on Currency and remove the existing data 
                   Set Focus To Element     id:currencyId  
                    Clear Element Text    id:currencyId
                    Sleep  2
                    
                     # Focus on Country Description and enter the data
                     Set Focus To Element    id:countryDes                  
                   Input Text    id:countryDes        AMERICAN1
                   # Focus on Currency id and enter the data
                   Set Focus To Element     id:currencyId    
                  Input Text    id:currencyId     DLR
                  # Focus on Status checkbox and verify that it should be selected
                  Set Focus To Element    id:countryStatus
                  Checkbox Should Be Selected    id:countryStatus
                  Sleep  2
                  #Focus on Save Button
                  Set Focus To Element    id:save
                  Click Element    id:save
                  
                   Sleep  2
                 Handle Alert    ACCEPT 
                 #Reload Page
                   Sleep  4
                   #Focus on country description for search
                 Set Focus To Element     xpath://*[@id='countrySearchDes']
                 Input Text    xpath://*[@id='countrySearchDes']        AMERICAN1
                      
                       Set Focus To Element    xpath://*[@id='save']
                        Click Element    xpath://*[@id='save']  
                        Sleep  2
                        #Focus on Grid data comes from the search
                        Set Focus To Element  xpath://*[@id='list']/tbody/tr/td[1]/a 
                         Click Element  xpath://*[@id='list']/tbody/tr/td[1]/a
                          #Now focus on the Country description and enter the new 
                        Set Focus To Element   xpath://*[@id='countryDes']
                        Sleep  1
                        #Clear the existing data
                        Clear Element Text    xpath://*[@id='countryDes']
                        sleep  3
                        #Enter the new data
                        Input Text    xpath://*[@id='countryDes']    indonesia
                           Sleep  3
                          Set Focus To Element  xpath://*[@id='save']
                          Click Element    xpath://*[@id='save']    
                          Alert Should Be Present    Data Modified successfully  
                          Sleep  2
                          #Unselect the right side frame so that we can select another frame
                          Unselect Frame
                           #Select Top frame
                        Select Frame  topNav
                         Sleep  1
                      #Focus on Logout button
             # Set Focus To Element  xpath://*[@id='headerdetailsForm']/div[1]/div/table/tbody/tr/td[3]/div/table/tbody/tr/td[2]/table/tbody/tr[1]/td/ul/li[2]/a
              #            Click Link    xpath://*[@id='headerdetailsForm']/div[1]/div/table/tbody/tr/td[3]/div/table/tbody/tr/td[2]/table/tbody/tr[1]/td/ul/li[2]/a    
                   

                   Log                                   Test Completed
                 
                                    
              
               #Close Browser
               #Close Window
              
                 
             
                
                             
       
            
            
           
                               
                                       
                          
          
          
         
            
           
            