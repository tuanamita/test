*** Settings ***
Documentation     This is a sample test suite using Robot Framework
Library           SeleniumLibrary
Suite Setup       Open Browser    https://automationexercise.com/login  chrome

*** Variables ***
${Name}           Amy
${E-mail}         64023870@up.ac.th
${Title}          Mrs.
${Password}       123456
${Date}           18
${Months}         May
${Years}          2002
${Firstname}      Amita
${Lastname}       Da
${Company}       susu
${Address1}       LA
${Address2}       LA
${Country}       United state
${State}         LA
${City}          USA
${Zipcode}       111111
${Mobile}        0987654321
${CountryIndia}    India

   

*** Keywords ***

Click Register Button
    Click Button       //*[@id="form"]/div/div/div[3]/div/form/button
    
Checked Checkbox1
    Click Element       //*[@id="form"]/div/div/div/div[1]/form/div[6]/label

Checked Checkbox2
    Click Element       //*[@id="form"]/div/div/div/div[1]/form/div[6]/label

Click Create Account Button
    Click Button        //*[@id="form"]/div/div/div/div[1]/form/button

Click Continue Button
    Click Button        //*[@id="form"]/div/div/div/div/a 

Input Name
    [Arguments]    ${Name}
    Input Text    //*[@id="form"]/div/div/div[3]/div/form/input[2]   ${Name}

Input E-mail
    [Arguments]    ${E-mail}
    Input Text    //*[@id="form"]/div/div/div[3]/div/form/input[3]   ${E-mail}

Click Element Gender
    Click Element   //*[@id="id_gender2"]

Input Password
    [Arguments]    ${Password}
    Input Text    //*[@id="password"]  ${Password}

Selecct from list by value1
   Select from list by value    days    18

Selecct from label by value
   Select from list by label    months    May

Selecct from list by value2
   Select from list by value    years    2002

Input Firstname
    [Arguments]    ${Firstname}
    Input Text    //*[@id="first_name"]    ${Firstname}

Input Lastname
    [Arguments]    ${Lastname}
    Input Text    //*[@id="last_name"]   ${Lastname}

Input Company
    [Arguments]    ${Company}
    Input Text    //*[@id="company"]    ${Company}

Input Address1
    [Arguments]    ${Address1}
    Input Text    //*[@id="address1"]   ${Address1}

Input Address2
    [Arguments]    ${Address2}
    Input Text    //*[@id="address2"]    ${Address2}

Input Country
    Select from list by label      //*[@id="country"]         ${CountryIndia}

Input State
    [Arguments]    ${State}
    Input Text    //*[@id="state"]    ${State}

Input City
    [Arguments]    ${City}
    Input Text    //*[@id="city"]    ${City}

Input Zipcode
    [Arguments]    ${Zipcode}
    Input Text    //*[@id="zipcode"]    ${Zipcode}

Input Mobile
    [Arguments]    ${Mobile}
    Input Text    //*[@id="mobile_number"]    ${Mobile}

Click Delete Account
    Click Element   //*[@id="header"]/div/div/div/div[2]/div/ul/li[5]/a




*** Test Cases ***
Register with valid info
   [Documentation]    Test the login functionality with valid credentials
   Input Name   ${Name}
   Input E-mail   ${E-mail}
   Click Register Button
   Click Element Gender
   Input Password   ${Password}
   Selecct from list by value1
   Selecct from label by value
   Selecct from list by value2
   Input Firstname  ${Firstname}
   Input Lastname   ${Lastname}
   Input Company  ${Company}
   Input Address1   ${Address1}
   Input Address2  ${Address2}
   Input Country
   Input State  ${State}
   Input City  ${City}
   Input Zipcode  ${Zipcode}
   Input Mobile   ${Mobile}
   Click Create Account Button
   Click Continue Button
   Click Delete Account

