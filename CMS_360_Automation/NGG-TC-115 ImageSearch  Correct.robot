*** Settings ***
Documentation       CMS-Engage360 Community Waterford

Library    SeleniumLibrary

Suite Setup        web setup
Suite Teardown    Close All Browsers

Resource    Resource/Variables.resource
Resource    Resource/Keywords.resource

*** Test Cases ***
NGG-TC-115 General Info - Image Search - Correct
    [Tags]    Validation Test       Caso 8

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
# fill Title
  input text             ${Title}        Party

# fill Description
  input text          ${Description}       Party

## Insert Image
  input text          ${Image}         Party

# click Magnifier search
   click element     ${Search}

# Press Cancel button
  sleep       2
  execute javascript          ${Cancel_Btton}

# Place the cursor in the "Image search" field
# Press the "Enter" key

# click Magnifier search
  click element     ${Search}

#"Done" Inactive button
# Click DONE
  click element       ${DONE}
    sleep   2
# Click Image
   click element       id=image_2527495

# Press Cancel button
   execute javascript            ${Cancel_Btton}

# click Magnifier search
   click element     ${Search}
    sleep    2
# Click Image
   click element        id=image_2527495

# Click DONE
   click element       ${DONE}
   sleep    2

# Visible the image
   Execute Javascript  window.scrollTo(0,500)

## Eliminated the Image click "X"
   click element       ${"X"Btton}

    sleep           2
## Insert Image
   click element       ${Image}
   input text          ${Image}         Party

# click Magnifier search
   click element     ${Search}
    sleep       2
# Click Image
   click element      id=image_2527495

# Click DONE
   click element       ${DONE}


# Meal Categories

# Dinner
   wait until element is visible          ${Dinner}
   click element                          ${Dinner}

# enter Star Date Calendar
   scroll element into view                ${Start-Date}
   wait until element is visible           ${Start-Date}
   set focus to element                    ${Start-Date}

# click Button Save
   element should be visible                 ${Save}        Save
   double click element                      ${Save}

# Message Meal
   element should be visible                 ${Title}     MEAL
   element should be visible                 ${Title}      THE COMMUNITY MEALS ARE BEING LOADED