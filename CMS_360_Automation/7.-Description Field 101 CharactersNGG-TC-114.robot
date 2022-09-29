*** Settings ***
Documentation       CMS-Engage360 Community Waterford

Library    SeleniumLibrary

Suite Setup        web setup
Suite Teardown    Close All Browsers

Resource    Resource/Variables.resource
Resource    Resource/Keywords.resource

*** Test Cases ***
NGG-TC-114 General Info - Description Field Validation - 101 Characters
    [Tags]          Validation Test       Caso 7

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




#Fill correctly in all the fields except the Title field.
# Fill Title
   click element           ${Title}
   input text              ${Title}        Sausage
# fill Description
    click element       ${Description}
    input text          ${Description}           Description field text validation abcdefghijklmnopqrstuvwxyz 1234567892abcdefghijklmnopqrstuwwxyz 12
    Press keys          ${Description}        ENTER

# Insert Image
    click element       ${Image}
    input text          ${Image}         Sausages


# # click Magnifier search
   click element     ${Search}
## Search Image
    click element        id=image_3524649

# Click DONE
    click element       ${DONE}

# Click Button Hide on Print
    select checkbox     ${Hide on print}
    unselect checkbox   ${Hide on print}

# fill Tag
    click element       ${Tag}
    input text          ${Tag}          Spike
    Press keys          ${Tag}          ENTER

# Meal Categories


# Dinner
    wait until element is visible          ${Dinner}
    click element                          ${Dinner}

 # enter Star Date Calendar
    wait until element is visible           ${Start-Date}
    set focus to element                    ${Start-Date}
    click element                           ${Start-Date}

# Shown the red text
    click element       ${Description}
    element should be visible             ${Message_error_Des}          Description must have less than 100 characters

#  gray text
    element should be visible           ${gray_text_Desc}           100/100

# click Button Save
    element should be visible                 ${Save}        Save
    double click element                      ${Save}

# Message Meal
    element should be visible                 ${Title}     MEAL
    element should be visible                 ${Title}      THE COMMUNITY MEALS ARE BEING LOADED




