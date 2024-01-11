*** Settings ***




Library        SeleniumLibrary



*** Test Cases ***

    

RegionMasterPage
     
          
   
       [Documentation]    Login Test For Capital India
    
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
       Set Focus To Element    xpath://*[@id='hrefIda1b3']
        Click Element    xpath://*[@id="hrefIda1b3"]
        Sleep  2 
        Unselect Frame
        #Click on Add Button
         Select Frame    content
         Element Text Should Be    xpath://*[@id='regionMaster']/fieldset[1]/legend    Region Master
            Set Focus To Element  xpath://*[@id='add']   
               Click Element    xpath://*[@id='add']
               Element Should Be Focused  id:regionDes
                Sleep  2
                Set Focus To Element   id:save 
                Click Element    id:save
                 
                  Alert Should Be Present    * Region Description is required.       LEAVE
                   
               sleep  2
                 Handle Alert    ACCEPT

                  

                  Set Focus To Element    id:regionDes
                    Input Text    id:regionDes    North West7
                    Sleep  2
                    Set Focus To Element    id:regionStatus
                  Checkbox Should Be Selected    id:regionStatus
                  Sleep  2
                  Set Focus To Element   id:save
                Click Element    id:save
                    Sleep  2
                    
                    Handle Alert    ACCEPT
                    Sleep  2
                    # Search the required data
                    Set Focus To Element    id:regionSearchDes
                    Input Text             id:regionSearchDes    North West7
                    Set Focus To Element    xpath://*[@id='save']     
                     Click Element    xpath://*[@id='save']        
                     Sleep  2
                         Set Focus To Element    Xpath://*[@id='list']/tbody/tr/td[1]/a
                         Click Element    Xpath://*[@id='list']/tbody/tr/td[1]/a  
                         Sleep  2  
                        Set Focus To Element  xpath://*[@id='regionDes']
                        Clear Element Text    xpath://*[@id='regionDes']
                        sleep  2
                        Input Text    xpath://*[@id='regionDes']    North West
                        Sleep  2
                        Set Focus To Element    xpath://*[@id='regionStatus']
                        
                         Checkbox Should Be Selected    xpath://*[@id='regionStatus']
                        Set Focus To Element    xpath://*[@id='save']
                     Click Element    xpath://*[@id='save']
                     Sleep  2

                      Handle Alert    ACCEPT
                        Unselect Frame
                        Select Frame   topNav
                         
                        Set Focus To Element  xpath://*[@id='headerdetailsForm']/div[1]/div/table/tbody/tr/td[3]/div/table/tbody/tr/td[2]/table/tbody/tr[1]/td/ul/li[2]/a
                      Click Element    xpath://*[@id='headerdetailsForm']/div[1]/div/table/tbody/tr/td[3]/div/table/tbody/tr/td[2]/table/tbody/tr[1]/td/ul/li[2]/a    
                   
                    
                    
                      
                    

   
             
              
  

               #Close Browser


