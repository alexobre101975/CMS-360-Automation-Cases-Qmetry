*** Settings ***
Documentation       CMS-Engage360 Community Waterford

Library    SeleniumLibrary

Suite Setup        web setup
Suite Teardown    Close All Browsers

Resource    Resource/Variables.resource
Resource    Resource/Keywords.resource

*** Test Cases ***

NGG-TC-111 General Info - Title Field Validation - 51 Characters
    [Tags]          Validation Test       Caso 4

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
#Not Fill Title
   click element           ${Title}

# fill Description
   input text          ${Description}    Sausages with red sauce

# Insert Image
   input text          ${Image}         Sausages

 # click Magnifier search
   click element     ${Search}

# Search Image
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

# Breakfast
    wait until element is visible          ${Breakfast}
    click element                          ${Breakfast}
# Lunch
    wait until element is visible          ${Lunch}
    click element                          ${Lunch}
# Dinner
    wait until element is visible          ${Dinner}
    click element                          ${Dinner}

 # enter Star Date Calendar
    wait until element is visible           ${Start-Date}
    set focus to element                    ${Start-Date}
    click element                           ${Start-Date}



# File Title
    input text              ${Title}         Title field text validation 12345678912345678912345

## The red text is displayed under it
    element should contain     ${Helper_Txt_red}          Title must have less than 50 characters

# Message number
    element should contain     ${50/50}          50/50

# Mesage Red Error
    element should contain       ${Message_Error}      Title may be abbreviated to 25 characters for printing:

# text shown this gray text
    element should contain         ${gray_text}            Title field text validati...

# click Button Save
    element should be visible                 ${Save}        Save
    double click element                      ${Save}

# Message Visible Meal
    element should be visible                 ${Title}     MEAL
    element should be visible                 ${Title}      THE COMMUNITY MEALS ARE BEING LOADED

# We wait a moment
# Make the Alert message "This meal has been added succesfully" visible
    wait until element is visible        ${Message_Accept}
     element should be visible            ${Message_Accept}       This meal has been added succesfully

















