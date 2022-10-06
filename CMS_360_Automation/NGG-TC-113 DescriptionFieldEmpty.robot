*** Settings ***
Documentation       CMS-Engage360 Community Waterford

Library    SeleniumLibrary

Suite Setup        web setup
#Suite Teardown    Close All Browsers

Resource    Resource/Variables.resource
Resource    Resource/Keywords.resource

*** Test Cases ***
NGG-TC-113 General Info - Description Field Validation - Empty
    [Tags]          Validation Test       Caso 6

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


# Fill correctly in all the fields.
#  Fill Title
   input text              ${Title}            New York Steak

# Not fill Description
   click element       ${Description}

# Insert Image
   input text          ${Image}         Steak

 # click Magnifier search
   click element     ${Search}

# Search Image
   click element        id=image_123668

# Click DONE
   click element       ${DONE}

# Click Button Hide on Print
   select checkbox     ${Hide on print}
   unselect checkbox   ${Hide on print}

# raise the visible tab TAG
    Execute Javascript  window.scrollTo(500,0)

# fill Tag
   click element       ${Tag}
   input text          ${Tag}          Spike
   Press keys          ${Tag}          ENTER

# Meal Category Dinner
# Dinner
   wait until element is visible          ${Lunch}
   click element                          ${Lunch}

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

## click Button Save
   element should be visible                 ${Save}        Save
   double click element                      ${Save}

# Message Meal
   element should be visible                 ${Title}     MEAL
    element should be visible                 ${Title}      THE COMMUNITY MEALS ARE BEING LOADED

# Visible Message requiered Field Tab Description "Message Alert"
    click element       ${Description}
    element should be visible              ${Message_error_Des}          required Field
