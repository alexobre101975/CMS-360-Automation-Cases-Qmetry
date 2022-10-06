*** Settings ***
Documentation       CMS-Engage360 Community Waterford

Library    SeleniumLibrary

Suite Setup        web setup
#Suite Teardown    Close All Browsers

Resource    Resource/Variables.resource
Resource    Resource/Keywords.resource

*** Test Cases ***
NGG-TC-117 General Info - Without Image
    [Tags]   Validation Test   Caso 9

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

# Fill correctly in all the fields
# Fill Title
   click element           ${Title}
   input text              ${Title}   Pizza

# fill Description
    click element       ${Description}
    input text          ${Description}       with red sauce

 # click Magnifier search
    click element     ${Search}

# Click Button Hide on Print
    select checkbox     ${Hide on print}
    unselect checkbox   ${Hide on print}

# raise the visible tab TAG
    Execute Javascript  window.scrollTo(500,0)

# fill Tag
    click element       ${Tag}
    input text          ${Tag}          Spike
    Press keys          ${Tag}          ENTER

# Meal Categories

# Dinner
    wait until element is visible          ${Dinner}
    click element                          ${Dinner}

# raise the visible tab TAG
    Execute Javascript  window.scrollTo(500,0)

# complete Recurrences correctly
 # enter Star Date Calendar
    scroll element into view                ${Start-Date}
    click element                           ${Start-Date}

# Enter Botton Calendar
   click element      ${Calendar_Btn}

# Click in current Day
    Double click element      ${Next_day}

# click Button Save
# that the message "This meal has been added successfully" appears and the captures of the dinning
    element should be visible                 ${Save}        Save
    double click element                      ${Save}

# We wait a moment
 # Make the Alert message "This meal has been added succesfully" visible
    wait until element is visible        ${Message_Accept}
    element should be visible            ${Message_Accept}       This meal has been added succesfully


