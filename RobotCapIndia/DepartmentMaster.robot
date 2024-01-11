*** Settings ***




Library        SeleniumLibrary



*** Test Cases ***

    

DepartmentMasterPage
     
          
   
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
       Set Focus To Element    xpath://*[@id='hrefIda1b5']
        Click Element    xpath://*[@id='hrefIda1b5']
        Sleep  2 
        Unselect Frame
        #Click on Add Button
         Select Frame    content
         Element Text Should Be    xpath://*[@id='departmentMaster']/fieldset/legend    Department Master
            Set Focus To Element  xpath://*[@id='add']   
               Click Element    xpath://*[@id='add']
               Element Should Be Focused  id:departmentDes
                Sleep  2
                Set Focus To Element   id:save
                Click Element    id:save
                 
                  Alert Should Be Present    * Department Description is required.       LEAVE
                   
               sleep  2
                 Handle Alert    ACCEPT
                
                                #Again focus on Department description and input 20 alphanumeric data           
                   Set Focus To Element    id:departmentDes                  
                   Input Text    id:departmentDes        AutomationAutomation
                     Sleep  2
                     #Clear the data
                     Clear Element Text    id:departmentDes
                     #Again focus on Department description and input 60 alphanumeric data---system will take only 50 alphanumeric value
                   Set Focus To Element    id:departmentDes                  
                   Input Text    id:departmentDes        AutomationAutomationAutomationAutomationAutomationAutomation
                         Sleep  2
                  

                  Set Focus To Element    id:departmentDes
                    Input Text    id:departmentDes    Automation2
                    Sleep  2
                    Set Focus To Element    id:departmentStatus
                  Checkbox Should Be Selected    id:departmentStatus
                  Sleep  2
                  Set Focus To Element   id:save
                Click Element    id:save
                    Sleep  2
                    
                    Handle Alert    ACCEPT
                    
                    # Search the required data
                    Set Focus To Element    id:departmentSearchDes 
                    Input Text    id:departmentSearchDes    Automation2
                    Set Focus To Element    xpath://*[@id='save']
                     Click Element    xpath://*[@id='save']    
                     Sleep  2
                        Set Focus To Element  xpath://*[@id='list']/tbody/tr/td[1]/a 
                         Click Element  xpath://*[@id='list']/tbody/tr/td[1]/a
                         Sleep  2
                     Set Focus To Element    xpath://*[@id='departmentStatus']
                        Unselect Checkbox    xpath://*[@id='departmentStatus']
                        Sleep  2
                        Set Focus To Element    xpath://*[@id='save']
                     Click Element    xpath://*[@id='save']
                     Sleep  2
                    
                    Handle Alert    ACCEPT
                        Unselect Frame
                        Select Frame   topNav
                      
                    

   
             
              Set Focus To Element  xpath://*[@id='headerdetailsForm']/div[1]/div/table/tbody/tr/td[3]/div/table/tbody/tr/td[2]/table/tbody/tr[1]/td/ul/li[2]/a
                      Click Element    xpath://*[@id='headerdetailsForm']/div[1]/div/table/tbody/tr/td[3]/div/table/tbody/tr/td[2]/table/tbody/tr[1]/td/ul/li[2]/a    
                   
  

               #Close Browser


