*** Settings ***
Library    SeleniumLibrary
Resource    ..//Keword//Keyword.robot



*** Variables ***
${url}  https://automationinterface1.front.staging.optimy.net/en/
${browser}  Chrome
${Email}    optimyautomationtester@gmail.com
${Pass}     yRMhojb7
${firstname}    Kumar
${lastname}    Raghav
${add}      Bengaluru
${pin}      1000
${country_name}     India
${phot_path}    C://Users//mitendra//Desktop//Mitendra personel//download.jpeg
${inputRole}    Manual tester
${Data}     elements for testing

*** Test Cases ***
Test_project
    Open My Browser    ${url}   ${browser}
    Accept Cookies
    New register
    Login
    register_new
    Personal Data
    Input_Text_Box
    Data Validation

*** Keywords ***
Login

    Input Email    ${Email}
    Input_Pasword    ${Pass}
    Submit

Personal Data
    First_name      ${firstname}
    Last_name       ${lastname}
    Address    ${add}
    Postal_code  ${pin}
    Select_postal_code

    Select_country   ${country_name}
    Photo    ${phot_path}
    Gender
    Role    ${inputRole}
    Tool

Input_Text_Box
    select frame    xpath://iframe[@title='Editor, 91296806-02e6-5bb5-bac0-deb4cbf64a64::42b16795-740d-5d97-b972-a3643510eb01']
    Text_Box    ${Data}
    unselect frame

Data Validation
    New_screen
    Validate and send






