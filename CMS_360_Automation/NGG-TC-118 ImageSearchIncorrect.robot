*** Settings ***
Documentation       CMS-Engage360 Community Waterford

Library    SeleniumLibrary

Suite Setup        web setup
#Suite Teardown    Close All Browsers

Resource    Resource/Variables.resource
Resource    Resource/Keywords.resource

*** Test Cases ***
NGG-TC-118 General Info - Image Search - Incorrect
    [Tags]   Validation Test   Caso 10

# Open Community Waterford
  Click Element    ${Community}
  Drag And Drop    ${Waterford}      ${Community}
  Click Element    ${Waterford}


# Open Community Waterford Engage360
  Click Element    ${Community}
  Drag And Drop    ${Waterford}      ${Community}
  Click Element    ${Waterford}

#  Enter Dinning Window used JavaScript
   execute javascript          ${Dinning}

# Click Community Waterford
   scroll element into view            ${Community}
   element should be visible           ${Community}     Waterford Community
   mouse over                          ${Community}

# Click Add Menu Item used JavaScript
   execute javascript                   ${Add Menu Item}




#Fill correctly in all the fields
# Fill Title
   click element           ${Title}
   input text              ${Title}   Pizza

# fill Description
   click element       ${Description}
   input text          ${Description}       with red sauce

# Insert Image
   click element       ${Image}
   input text          ${Image}         images search in dining cms June 21, 2022 abcdefghijklmnopqrstuvwxyz 1234567890 a1a2a3a4a5a6a7a8a9a0x

# # click Magnifier search
   click element     ${Search}

# Shown the red text
   element should be visible        ${100Characters}        The search must contain less than 100 characters

#  gray text
   element should be visible        ${100/101}            101/100

# Click Image Search no perform any action
   Press keys          ${Image}          ENTER
