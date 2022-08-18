*** Settings ***
Documentation       CMS-Engage360 Community Waterford

Library    SeleniumLibrary

Suite Setup        web setup
#Suite Teardown    Close All Browsers

Resource    Resource/Variables.resource
Resource    Resource/Keywords.resource

*** Test Cases ***

NGG-TC-117 General Info - Without Image
    [Tags]   Validation Test   Caso9

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

#Fill correctly in all the fields
# Fill Title
        click element           ${Title}
        input text              ${Title}   Pizza

# fill Description
        click element       ${Description}
        input text          ${Description}       with red sauce

# # click Magnifier search
         click element     ${Search}

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


# click Button Save
# that the message "This meal has been added successfully" appears and the captures of the dinning
        wait until element is visible             ${Save}
        set focus to element                      ${Save}
        element should be visible                 ${Save}        Save
        double click element                      ${Save}

# We wait a moment
 # Make the Alert message "This meal has been added succesfully" visible
        wait until element is visible        ${Message_Accept}
        element should be visible            ${Message_Accept}       This meal has been added succesfully


#
NGG-TC-118 General Info - Image Search - Incorrect
    [Tags]   Validation Test   Caso10


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
        double click element                ${Community}

# Enter Button Add Menu Item

        element text should be              ${Add Menu Item}         Add Menu Item
        wait until page contains element    ${Add Menu Item}
        element should be visible           ${Add Menu Item}      MEAL
        element should be visible           ${Add Menu Item}     THE MEALS IMAGES ARE BEING LOADED
        click element                       ${Add Menu Item}



#Fill correctly in all the fields
# Fill Title
        click element           ${Title}
        input text              ${Title}   Pizza

# fill Description
        click element       ${Description}
        input text          ${Description}       with red sauce

# Insert Image
        click element       ${Image}
        input text          ${Image}         images search in dining cms June 21, 2022 abcdefghijklmnopqrstuvwxyz 1234567890 a1a2a3a4a5a6a7a8a9a0x

# # click Magnifier search
         click element     ${Search}

# Shown the red text
        element should be visible           //p[contains(text(),'The search must contain less than 100 characters')]       The search must contain less than 100 characters

#  gray text
        element should be visible          //div [@class='MuiGrid-root characterCount MuiGrid-item']         101/100

# Click Image Search no perform any action
        Press keys          ${Image}          ENTER
