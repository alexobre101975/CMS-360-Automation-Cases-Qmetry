*** Settings ***
Documentation       CMS-Engage360 Community Waterford

Library    SeleniumLibrary

Suite Setup        web setup
Suite Teardown    Close All Browsers

Resource    Resource/Variables.resource
Resource    Resource/Keywords.resource

*** Test Cases ***

NGG-TC-110 General Info - Title Field Validation - 26 Characters
    [Tags]          Validation Test       Caso 3


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



 # General info: fill complete

# fill Description
   input text          ${Description}    Roast Pork Loin with Beer Braised Onions

# Insert Image
   input text          ${Image}        Roast Pork

# # click Magnifier search
   click element     ${Search}

# Search Image
   click element        id=image_1239434

 # Click DONE
   click element       ${DONE}

# Click Button Hide on Print
  select checkbox     ${Hide on print}

# fill Tag
  input text          ${Tag}          Delicious
  Press keys          ${Tag}          ENTER

# Meal Categories
# Dinner
  wait until element is visible          ${Dinner}
  click element                          ${Dinner}

# fill title
   input text              ${Title}             Title field validation 123
   click element           ${Title}

# gray text "26/ 50" (assign an ID to an XPath)
   assign id to element         ${26/50}                id=gray text
   Page Should Contain Element      id=gray text

## The red text is displayed
    assign id to element        ${red_text}         id=MessageRed
    page should contain element     id=MessageRed
    element should contain      ${red_text}       Title may be abbreviated to 25 characters for printing:

## text shown this gray text
    assign id to element        ${gray_text_show}        id=Text_Gray
    page should contain element     id=Text_Gray
    element should contain         ${gray_text_show}          Title field validation 12...

# click Button Save
    scroll element into view        ${Save}
    wait until element is visible        ${Save}
    double click element           ${Save}

# Message Meal
    element should be visible                 ${Title}     MEAL
    element should be visible                 ${Title}      THE COMMUNITY MEALS ARE BEING LOADED

# We wait a moment
 # Make the Alert message "This meal has been added succesfully" visible
    wait until element is visible        ${Message_Accept}
    element should be visible            ${Message_Accept}       This meal has been added succesfully



