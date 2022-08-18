*** Settings ***
Documentation       CMS-Engage360 Community Waterford

Library    SeleniumLibrary

Suite Setup        web setup
#Suite Teardown    Close All Browsers

Resource    Resource/Variables.resource
Resource    Resource/Keywords.resource

*** Test Cases ***
NGG-TC-114 General Info - Description Field Validation - 101 Characters
    [Tags]          Validation Test       Caso7

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
# Fill Title
        click element           ${Title}
        input text              ${Title}        Sausage
# fill Description
        click element       ${Description}
        input text          ${Description}           Description field text validation abcdefghijklmnopqrstuvwxyz 1234567892abcdefghijklmnopqrstuwwxyz 12
        Press keys          ${Description}        ENTER

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

# Shown the red text
        click element       ${Description}
        element should be visible             ${Message_error_Des}          Description must have less than 100 characters

#  gray text
        element should be visible           ${gray_text_Desc}           100/100


# click Button Save
        wait until element is visible             ${Save}
        set focus to element                      ${Save}
        element should be visible                 ${Save}        Save
        double click element                      ${Save}
        element should be visible                 ${Title}     MEAL
        element should be visible                 ${Title}      THE COMMUNITY MEALS ARE BEING LOADED




NGG-TC-115 General Info - Image Search - Correct
    [Tags]    Validation Test       Caso8

# Remove Text Tabs
# Remove Text Title Tab
    click element         ${Title}
    Press Keys            ${Title}   CTRL+A+DELETE

# Remove Text Title Tab
    click element         ${Description}
    Press Keys            ${Description}       CTRL+A+DELETE

# Remove Text Title Tab
    click element         ${Image}
    Press Keys            ${Image}      CTRL+A+DELETE



# Fill correctly in all the fields.
# fill Title
     click element           ${Title}
     input text             ${Title}        Fiesta

# fill Description
     click element       ${Description}
     input text          ${Description}           Fiesta

## Insert Image
      click element       ${Image}
      input text          ${Image}         Fiesta

# click Magnifier search
      click element     ${Search}

# Press Cancel button
    sleep       2
    execute javascript           document.getElementsByClassName('MuiGrid-root alingCenter MuiGrid-container MuiGrid-item')[1].click()

# Place the cursor in the "Image search" field
# Press the "Enter" key
# click Magnifier search
      click element     ${Search}

#"Done" Inactive button
# Click DONE
        click element       ${DONE}

# Click Image
    click element       id=image_241642

# Press Cancel button
    execute javascript           document.getElementsByClassName('MuiGrid-root alingCenter MuiGrid-container MuiGrid-item')[1].click()

# click Magnifier search
      click element     ${Search}

# Click Image
    click element       id=image_241642

# Click DONE
        click element       ${DONE}

# Visible the image
    Execute Javascript  window.scrollTo(0,500)

# Eliminated the Image click "X"
      Execute Javascript        document.getElementsByClassName('MuiIconButton-label')[1].click()

## Insert Image
      click element       ${Image}
      input text          ${Image}         Fiesta
# click Magnifier search
      click element     ${Search}
# Click Image
    click element       id=image_241642
# Click DONE
        click element       ${DONE}

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
        wait until element is visible             ${Save}
        set focus to element                      ${Save}
        element should be visible                 ${Save}        Save
        double click element                      ${Save}
        element should be visible                 ${Title}     MEAL
        element should be visible                 ${Title}      THE COMMUNITY MEALS ARE BEING LOADED