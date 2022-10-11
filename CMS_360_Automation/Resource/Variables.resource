*** Variables ***
${browser}       gc
${website}       http://dev.www.engage360.evacompute.com:8080/
${website1}     http://dev.www.engage360.evacompute.com:8080/dashboard
${Email}                    superUser
${Password}                 SuperAdmin1@
${Community}                SuperUserCombo
${Waterford}                SuperUserCombo-option-30
${Total_Opened}             id=repairPage_Image
${Search}                   xpath://button[@class='MuiButtonBase-root MuiIconButton-root icon_btn'][2]
${DONE}                      id=done_btn
${Breakfast}                id=icon_6155b016d8ca9945efb2e722
${Lunch}                    id=icon_6155b016d8ca9945efb2e723
${Dinner}                   id=icon_6155b016d8ca9945efb2e724
${Start-Date}               id=add_dining_start_date
${Message_Accept}           id=alert_AddDining_Success
${Text_Image}               id=id_dining_header_list_image
${text Menu Item}           id=id_dining_header_list_menu_item
${required Field}           id=add_dining_title-helper-text
${Message_error_Des}        id=add_dining_description-helper-text
${Menu_Items}               id=boards-tab-0
${26/50}                    //div[@class='MuiGrid-root characterCount MuiGrid-item'][1]
${red_text}                 //div[@class='MuiGrid-root errorText']
${gray_text_show}           //div[contains(text(),'Title field validation 12...')]
${Dinning}                  document.getElementById('SideNav_Menu_Dinning').click()
${Add Menu Item}            document.getElementById('dining_new_dining_btn').click()
${Title}                    id=add_dining_title
${Description}              id=add_dining_description
${Image}                    name=image_url
${Hide on print}            id=dining_hideOnPrinting_switch
${Tag}                      id=add_dining_tags
${Save}                     id=add_dining_save_btn
${Helper_Txt_red}            id=add_dining_title-helper-text
${50/50}                    //div[@class='MuiGrid-root characterCount MuiGrid-item']
${Message_Error}            //div[@class='MuiGrid-root errorText']
${gray_text}                //div[contains(text(),'Title field text validati...')]
${gray_text_Desc}           //div[@class='MuiGrid-root characterCount MuiGrid-item']
${Cancel_Btton}             document.getElementsByClassName('MuiGrid-root alingCenter MuiGrid-container MuiGrid-item')[1].click()
${"X"Btton}                 id=dining_delete_icon
${100Characters}            //p[contains(text(),'The search must contain less than 100 characters')]
${100/101}                  //div [@class='MuiGrid-root characterCount MuiGrid-item']
${Calendar_Btn}             id=Calendar_Btn_StartDate_add_dining_start_date
${Next_day}                 id=Calendar_Icon_Adornment_25
${Cancel_Btton}             document.getElementsByClassName('MuiGrid-root alingCenter MuiGrid-container MuiGrid-item')[1].click()
${day_22}                   document.getElementsByClassName('MuiTypography-root MuiTypography-body2 MuiTypography-colorInherit')[27].click()
















