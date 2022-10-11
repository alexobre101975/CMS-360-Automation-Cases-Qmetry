*** Settings ***
Documentation       CMS-Engage360 Community Waterford

Library    SeleniumLibrary

Suite Setup        web setup
#Suite Teardown    Close All Browsers

Resource    Resource/Variables.resource
Resource    Resource/Keywords.resource

*** Test Cases ***

NGG-TC-108 General Info - Title Field Validation - Correctly
    [Tags]          Validation Test       Caso 1

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


# Fill out General Dinning Form
# Fill Title
   input text              ${Title}       "Test01"

# fill Description
   input text          ${Description}    apple Sauce

# Insert Image
   click element       ${Image}
   input text          ${Image}         apple Sauce

 # click Magnifier search
   click element     ${Search}

# Search Image
   click element        id=image_544676

# Click DONE
   click element       ${DONE}

# fill Tag
  input text          ${Tag}          Delicious
  Press keys          ${Tag}          ENTER

# Meal Category
# Dinner
  wait until element is visible          ${Dinner}
  click element                          ${Dinner}

# Select and Unselect Button Hide On Print
   select checkbox          ${Hide on print}
   unselect checkbox        ${Hide on print}

# raise the visible tab TAG
    Execute Javascript  window.scrollTo(500,0)

# complete Recurrences correctly
 # enter Star Date Calendar
    scroll element into view                ${Start-Date}
    click element                           ${Start-Date}

# Enter Botton Calendar
   click element      ${Calendar_Btn}

# Click in current Day
    execute javascript     ${day_22}


# click Button Save
   element should be visible                 ${Save}        Save
   double click element                      ${Save}

# visible message Meal
   element should be visible                 ${Title}     MEAL
   element should be visible                 ${Title}      THE COMMUNITY MEALS ARE BEING LOADED

# We wait a moment
 # Make the Alert message "This meal has been added succesfully" visible
    wait until element is visible        ${Message_Accept}
     element should be visible            ${Message_Accept}       This meal has been added succesfully



