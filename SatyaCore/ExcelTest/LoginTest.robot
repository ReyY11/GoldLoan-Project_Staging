*** Setting ***

Library   ExcelLibrary




 *** Test Cases ***

Login
    
      Open Browser          https://predigi.capitalindia.in/OmniFin/loadLMS.do                 Chrome
     
        Maximize Browser Window


ValidTest
    
   ${username}         Read Excel    ${CURDIR}${/}..\\Data\\Data.xls         Login    2    1
    Log To Console    ${username}    
    
    ${password}           Read Excel    ${CURDIR}${/}..\\Data\\Data.xls         Login    2    2
    Log To Console    ${password}    

InvalidTest
    
   ${username}         Read Excel    ${CURDIR}${/}..\\Data\\Data.xls         Login    3    1
    Log To Console    ${username}    
    
    ${password}           Read Excel    ${CURDIR}${/}..\\Data\\Data.xls         Login    3    2
    Log To Console    ${password}    





*** Keywords ***

Read Excel
    
     [Arguments]   ${filepath}         ${sheetname}        ${rownum}          ${colnum}
    Open Excel Document    ${filepath}    doc_id
    Get Sheet             ${sheetname}
    ${data}             Read Excel Cell    ${row_num}    ${col_num}    
    [Return]             ${data}
    
     Close Current Excel Document