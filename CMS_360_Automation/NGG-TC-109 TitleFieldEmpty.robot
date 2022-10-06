*** Settings ***
Documentation       CMS-Engage360 Community Waterford

Library    SeleniumLibrary

Suite Setup        web setup
#Suite Teardown    Close All Browsers

Resource    Resource/Variables.resource
Resource    Resource/Keywords.resource

*** Test Cases ***

NGG-TC-109 General Info - Title Field Validation - Empty
    [Tags]          Validation Test       Caso 2

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


# General info incompleted
# No Fill Title
   click element        ${Title}

    sleep       2
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

# download and make the image visible
    Execute Javascript  window.scrollTo(0,500)

# Select Button Hide On Print
   select checkbox          ${Hide on print}

# raise the visible tab TAG
    Execute Javascript  window.scrollTo(500,0)

# fill Tag
  input text          ${Tag}          Delicious
  Press keys          ${Tag}          ENTER

# Meal Category
# Dinner
  wait until element is visible          ${Dinner}
  click element                          ${Dinner}

# click Button Save
  element should be visible                 ${Save}        Save
  double click element                      ${Save}

# visible the massage "required Field"
   wait until element is visible              ${required Field}
   click element               ${required Field}
   element should be visible            ${required Field}       required Field



