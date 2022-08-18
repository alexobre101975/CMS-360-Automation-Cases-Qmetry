*** Settings ***
Documentation       CMS-Engage360 Community Waterford

Library    SeleniumLibrary

Suite Setup        web setup
#Suite Teardown    Close All Browsers

Resource    Resource/Variables.resource
Resource    Resource/Keywords.resource

*** Test Cases ***

NGG-TC-111 General Info - Title Field Validation - 51 Characters
    [Tags]          Validation Test       Caso4

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
# Clic on "Add Menu Item"
        set focus to element            ${Add Menu Item}
        wait until element is visible   ${Add Menu Item}
        element text should be          ${Add Menu Item}         Add Menu Item
        click element                   ${Add Menu Item}


#Fill correctly in all the fields except the Title field.
#Not Fill Title
        click element           ${Title}

# fill Description
        click element       ${Description}
        input text          ${Description}    Sausages with red sauce

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
        click element           ${Title}
        input text              ${Title}         Title field text validation 12345678912345678912345

# The red text is displayed under it
        element should contain     ${Helper_Txt_red}          Title must have less than 50 characters
# Message number
        element should contain     ${Number_Gray}        50/50

# Mesage Red Error
        element should contain       ${Message_Error}      Title may be abbreviated to 25 characters for printing:

# text shown this gray text
         element should contain         ${gray_text}            Title field text validati...

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





NGG-TC-112 General Info - Description Field Validation - Correctly
    [Tags]          Validation Test       Caso5


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

# Click Community Waterford

        wait until element is visible       ${Community}
        set focus to element                ${Community}
        element should be visible           ${Community}    Waterford Community

        element should be visible           ${Community}    COMMUNITY
        element should be visible           ${Community}        THE COMMUNITY MEALS ARE BEING LOADED
        mouse down                          ${Community}
        click element                       ${Community}
#        double click element                ${Community}

# Enter Button Add Menu Item

        element text should be              ${Add Menu Item}         Add Menu Item
        wait until page contains element    ${Add Menu Item}
        element should be visible           ${Add Menu Item}      MEAL
        element should be visible           ${Add Menu Item}     THE MEALS IMAGES ARE BEING LOADED
        click element                       ${Add Menu Item}



# Fill correctly in all the fields.
#  Fill Title
        click element           ${Title}
        input text              ${Title}            New York Steak

# fill Description
        click element       ${Description}
        input text          ${Description}    Test01

# Insert Image
        click element       ${Image}
        input text          ${Image}         Steak

# # click Magnifier search
         click element     ${Search}
## Search Image
         click element        id=image_123668

# Click DONE
        click element       ${DONE}

# Click Button Hide on Print
        select checkbox     ${Hide on print}
        unselect checkbox   ${Hide on print}

# fill Tag
        click element       ${Tag}
        input text          ${Tag}          Spike
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





NGG-TC-113 General Info - Description Field Validation - Empty
    [Tags]          Validation Test       Caso6


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

# Click Community Waterford

        wait until element is visible       ${Community}
        set focus to element                ${Community}
        element should be visible           ${Community}    Waterford Community

        element should be visible           ${Community}    COMMUNITY
        element should be visible           ${Community}        THE COMMUNITY MEALS ARE BEING LOADED
        mouse down                          ${Community}
        click element                       ${Community}
#        double click element                ${Community}

# Enter Button Add Menu Item

        element text should be              ${Add Menu Item}         Add Menu Item
        wait until page contains element    ${Add Menu Item}
        element should be visible           ${Add Menu Item}      MEAL
        element should be visible           ${Add Menu Item}     THE MEALS IMAGES ARE BEING LOADED
        click element                       ${Add Menu Item}



# Fill correctly in all the fields.
#  Fill Title
        click element           ${Title}
        input text              ${Title}            New York Steak

# Not fill Description
        click element       ${Description}


# Insert Image
        click element       ${Image}
        input text          ${Image}         Steak

# # click Magnifier search
         click element     ${Search}
## Search Image
         click element        id=image_123668

# Click DONE
        click element       ${DONE}

# Click Button Hide on Print
        select checkbox     ${Hide on print}
        unselect checkbox   ${Hide on print}

# fill Tag
        click element       ${Tag}
        input text          ${Tag}          Spike
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
        wait until element is visible             ${Save}
        set focus to element                      ${Save}
        element should be visible                 ${Save}        Save
        double click element                      ${Save}
        element should be visible                 ${Title}     MEAL
        element should be visible                 ${Title}      THE COMMUNITY MEALS ARE BEING LOADED

# Visible Message requiered Field Tab Description "Message Alert"
        click element       ${Description}
        element should be visible              ${Message_error_Des}          required Field
