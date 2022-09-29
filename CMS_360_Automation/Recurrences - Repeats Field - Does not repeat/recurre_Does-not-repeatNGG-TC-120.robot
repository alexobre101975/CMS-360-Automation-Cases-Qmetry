*** Settings ***
Documentation       CMS-Engage360 Community Waterford

Library    SeleniumLibrary

Suite Setup        web setup
Suite Teardown    Close All Browsers

Resource    Resources/Variables.resource
Resource    Resources/Keywords.resource

*** Test Cases ***

NGG-TC-120 Automation Recurrences - Repeats Field - Does not repeat
        [Tags]      Validation Test       Case 1

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
    execute javascript             ${Add Menu Item}


# Do not fill the general information

# fill title
    input text         ${dining_title}      Coffe

# fill Description
    input text        ${dining_description}   Coffe and milk

# image
    click element       ${image}
     input text         ${image}     Coffe

# click Magnifier search
         click element     ${Search}

# Search Image
         click element        id=image_2400874

# Click DONE
        click element       ${DONE}


#fill the Identifiers Complete
## Click Tags
  input text     ${tags}       Coffe
  press keys     ${tags}       ENTER

  input text     ${tags}       Milk
  press keys     ${tags}       ENTER


# Meal Category
# Breakfast, Lunch and Dinner
   wait until element is visible       ${Breakfast}
   click element   ${Lunch}
   click element   ${Dinner}


# Return Category Breakfast
   click element    ${Breakfast}


# Select and Unselect fill Hide on print
   select checkbox     ${Hide_Print}
   unselect checkbox   ${Hide_Print}


fill the Recurrences Information

# do not enter the calendar
   click element              ${Start-Date}

# Click on Repeats field (Does not repeat)
   click element             ${Fill_DoesNotRepeat}
    sleep       1
# Select "Does not repeat " option
    click element           ${Does_Not_Repeat}
    sleep       1
# Click on End field (After)
    click element       ${After}
    sleep       1
# Select "On this date" option
    click element       ${On_this_date}
    sleep       1
# click calendar icon
   click element       ${CalendericonRecurre}
    sleep       1
# Click left simbol  (>)
  click element     ${rightArrow}
   sleep       1
# Clic Back simbol  (<)
  click element     ${leftArrow}
  sleep        1

