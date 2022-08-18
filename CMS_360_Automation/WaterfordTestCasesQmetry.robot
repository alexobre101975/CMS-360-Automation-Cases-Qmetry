*** Settings ***
Documentation       CMS-Engage360 Community Waterford

Library    SeleniumLibrary

Suite Setup        web setup
#Suite Teardown    Close All Browsers

Resource    Resource/Variables.resource
Resource    Resource/Keywords.resource

*** Test Cases ***

NGG-TC-108 General Info - Title Field Validation - Correctly
    [Tags]          Validation Test       Caso1

# Open Communities Engage360
     click element      ${Community}
     element should be visible       ${Community}    DASBOARD
     element should be visible       ${Community}        THE DASHBOARD IS BEING LOADED

     element should be visible       ${Community}    COMMUNITY
     element should be visible       ${Community}        THE COMMUNITY MEALS ARE BEING LOADED
     Drag And Drop       ${Waterford}       ${Community}
     element should be visible       ${Community}    DASBOARD
     element should be visible       ${Community}        THE DASHBOARD IS BEING LOADED
     click element       ${Waterford}


#  Click Buttons Mounth and Week

      click button                        ${Btton Month}
      click button                        ${Btton Week}


# Simulate click Total Opened Window
       wait until element is visible       ${Total_Opened}
       set focus to element                ${Total_Opened}
       element should be visible           ${Total_Opened}      Total Opened
       mouse over                          ${Total_Opened}


#  enter dinning window
      Wait Until Element Is Visible      ${Lgo Dinning}
      Set Focus To Element               ${Lgo Dinning}
      mouse out                          ${Lgo Dinning}
      click element                      ${Lgo Dinning}
      element should be visible          ${Lgo Dinning}       COMMUNITY
      element should be visible          ${Lgo Dinning}       THE COMMUNITY MEALS ARE BEING LOADED

# Click Community Waterford
       wait until element is visible       ${Community}
       set focus to element                ${Community}
       element should be visible           ${Community}    Waterford Community
       click element                       ${Community}
       element should be visible          ${Lgo Dinning}       COMMUNITY
       element should be visible          ${Lgo Dinning}       THE COMMUNITY ID IS BEING LOADED
       double click element                ${Community}

# Enter Button Add Menu Item
        set focus to element            ${Add Menu Item}
        wait until element is visible   ${Add Menu Item}
        element text should be          ${Add Menu Item}         Add Menu Item
        click element                   ${Add Menu Item}


# Fill out General Dinning Form
# Fill Title
        click element           ${Title}
        input text              ${Title}       "Test01"

# fill Description
        click element       ${Description}
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

# Click Button Hide on Print
        select checkbox     ${Hide on print}
        unselect checkbox   ${Hide on print}

# fill Tag
        click element       ${Tag}
        input text          ${Tag}          Delicious
        Press keys          ${Tag}          ENTER

# Meal Category Lunch

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

# click Button Save
# that the message "This meal has been added successfully" appears and the captures of the dinning
        wait until element is visible             ${Save}
        set focus to element                      ${Save}
        element should be visible                 ${Save}        Save
        double click element                      ${Save}
        element should be visible                 ${Title}     MEAL
        element should be visible                 ${Title}      THE COMMUNITY MEALS ARE BEING LOADED

# We wait a moment
 # Make the Alert message "This meal has been added succesfully" visible
        wait until element is visible        ${Message_Accept}
        element should be visible            ${Message_Accept}       This meal has been added succesfully







NGG-TC-109 General Info - Title Field Validation - Empty
    [Tags]          Validation Test       Caso2

# simulate Click the text Image
        wait until element is visible       ${Text_Image}
        set focus to element                ${Text_Image}
        mouse over                          ${Text_Image}

# simulate click the text Menu Item
        wait until element is visible           ${text Menu Item}
        set focus to element                    ${text Menu Item}
        mouse over                              ${text Menu Item}

# Make the Alert message "This meal has been added succesfully" visible
        wait until element is visible        ${Message_Accept}
        element should be visible            ${Message_Accept}        This meal has been added succesfully


        wait until element is visible           ${Menu_Items}
        set focus to element                    ${Menu_Items}
        mouse over                              ${Menu_Items}
# Click Community Waterford

        wait until element is visible       ${Community}
        set focus to element                ${Community}
        element should be visible           ${Community}    Waterford Community
        element should be visible           ${Community}    COMMUNITY
        element should be visible           ${Community}        THE COMMUNITY MEALS ARE BEING LOADED
        mouse down                          ${Community}
        click element                       ${Community}

# Enter Button Add Menu Item
        element text should be              ${Add Menu Item}         Add Menu Item
        wait until page contains element    ${Add Menu Item}
        element should be visible           ${Add Menu Item}      MEAL
        element should be visible           ${Add Menu Item}     THE MEALS IMAGES ARE BEING LOADED
        click element                       ${Add Menu Item}


# Fill correctly in all the fields except the Title field.
# Not title
        click element                           ${Title}

# fill Description
        click element       ${Description}
        input text          ${Description}    Roast Pork Loin with Beer Braised Onions

# Insert Image
        click element       ${Image}
        input text          ${Image}        Roast Pork

# # click Magnifier search
         click element     ${Search}
# Search Image
         click element        id=image_1239434
# Click DONE
        click element       ${DONE}

# Click Button Hide on Print
        select checkbox     ${Hide on print}
        unselect checkbox   ${Hide on print}

# fill Tag
        click element       ${Tag}
        input text          ${Tag}          Delicious
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

# click Button Save
    click element           ${Save}
        element should be visible                 ${Title}     MEAL
        element should be visible                 ${Title}      THE COMMUNITY MEALS ARE BEING LOADED

# simulate click title
         wait until element is visible      ${Title}
         set focus to element               ${Title}
         mouse over                         ${Title}

#  not saved and the message "required Field"
    wait until element is visible           ${Message_Alert_Title}
    set focus to element                    ${Message_Alert_Title}
    element should contain                  ${Message_Alert_Title}                  required Field

# Click Button Simbol Waterford Community Meals
    click element           ${Back}









NGG-TC-110 General Info - Title Field Validation - 26 Characters
    [Tags]          Validation Test       Caso3

# simulate Click the text Image
        wait until element is visible       ${Text_Image}
        set focus to element                ${Text_Image}
        mouse over                          ${Text_Image}

# simulate click the text Menu Item
        wait until element is visible           ${text Menu Item}
        set focus to element                    ${text Menu Item}
        mouse over                              ${text Menu Item}


# Enter Button Add Menu Item
        element text should be              ${Add Menu Item}         Add Menu Item
        wait until page contains element    ${Add Menu Item}
        element should be visible           ${Add Menu Item}      MEAL
        element should be visible           ${Add Menu Item}     THE MEALS IMAGES ARE BEING LOADED
        click element                       ${Add Menu Item}

# fill title
        input text              ${Title}             Title field validation 123
        click element           ${Title}

# The red text is displayed under it
        element should contain      ${red_text}       Title may be abbreviated to 25 characters for printing:
# text shown this gray text
         element should contain         ${gray_text_show}          Title field validation 12...

# fill Description
        click element       ${Description}
        input text          ${Description}    Roast Pork Loin with Beer Braised Onions

# Insert Image
        click element       ${Image}
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
        click element       ${Tag}
        input text          ${Tag}          Delicious
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

# click Button Save
    click element           ${Save}
        element should be visible                 ${Title}     MEAL
        element should be visible                 ${Title}      THE COMMUNITY MEALS ARE BEING LOADED

#        Execute Javascript  window.scrollTo(0,500)
#        Execute Javascript  window.scrollTo(0,document.body.scrollHeight)
