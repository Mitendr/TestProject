*** Settings ***
Library    SeleniumLibrary
Variables    ..//Locator//locators.py

*** Variables ***


*** Keywords ***
Open My Browser
    [Arguments]    ${url}   ${browser}
    open browser    ${url}   ${browser}
    maximize browser window
    set selenium speed    2

Accept Cookies
    click element    ${cokies}

New register
    click element   ${new_register}
Input Email
    [Arguments]    ${Email}
    input text    ${email_ID}     ${Email}

Input_Pasword
    [Arguments]    ${Pass}
    input text      ${password_in}     ${Pass}
Submit
    click element    ${submit_button}
Register_new
    click element    ${register_new}


First_name
    [Arguments]    ${firstname}
    input text    ${f_name}      ${firstname}

Last_name
    [Arguments]    ${lastname}
    input text    ${l_name}      ${lastname}

Address
    [Arguments]    ${add}
    input text    ${house}      ${add}
Postal_code
    [Arguments]    ${pin}
    input text    ${postal_code}    ${pin}

Select_postal_code

    press keys    ${postal_code}     ARROW_UP
    press keys    None    ENTER



Select_country
    [Arguments]    ${country_name}
    wait until element is visible   ${country}
    select from list by label   ${country}    ${country_name}
Photo
    [Arguments]    ${phot_path}
    choose file    ${upload_photo}          ${phot_path}

Gender
    click element    ${gender}
Role
    [Arguments]    ${inputRole}
    select from list by label   ${role}     ${inputRole}
Tool
    click element    ${tool}

Text_Box
    [Arguments]    ${Data}
    input text    ${text_box}   ${Data}

New_screen
    click element    ${next_screen}
Validate and send
    click element    ${Validate}
