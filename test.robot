*** Settings ***
Library     Selenium2Library
Resource    resource.robot
Test Setup      start
Test Teardown   Close All Browsers


*** Variables ***


*** Test Cases ***
enter to cabinet    #PASS
    #start
    [tags]      1
    enter cabinet
    Get Cookies

add to cart         #PASS
    [tags]      2
    #start
    wait element        css=section:nth-child(3) > div.row.section-items-list > div:nth-child(1) div.buy-button-placeholder > div             #my keywords !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    click element       css=section:nth-child(3) > div.row.section-items-list > div:nth-child(1) div.buy-button-placeholder > div
    click element       css=div.increase.change-number
    click element       css=#content > div > div:nth-child(4) > div:nth-child(3) > div.rodal-dialog.cart-modal-container > span
    Reload Page
    Page should contain element         //*[@id="cart-field"]/i
    #close

search bar            #PASS                     #run keyword and ignore error
#     #depends of SIZE of browser WINDOW!!!!!(small size pass   ????)
    [tags]      3
    #Get Cookies
    Page Should Contain Element       css=#search-field > div > div.react-autosuggest__container > input
    Set Selenium Implicit Wait         10s
    #sleep   3s
    #Wait Until Element Is Not Visible       css=#search-field > div > div.react-autosuggest__container > input
    input text              css=div.header-content.desktop-header #search-field div.react-autosuggest__container > input      wed
    click element           css=div.grid.bottom-tier #search-field > button > i


city choose                #PASS
    [tags]      4
    click element       css=div.select-city-content div.buttons > div.button.fail
    input text          css=div.rodal-dialog.city-select-container > div:nth-child(2) div:nth-child(1) input    хмель
    click element       css=div.rodal-dialog.city-select-container > div:nth-child(2) li:nth-child(1) > div
    click element       css=div.rodal-dialog.city-select-container > span
    Page Should Contain     Хмельн

work with catalog and filter  #PASS
    [tags]      5
    go to tv
    Wait Until Page Contains Element            css=#input-2968 > label > a                 #kivi
    click element       css=#input-2968 > label > a
    click element       css=div.riding-filters-submit-button > div.button-content
    Capture Page Screenshot         filename=5.png


language changes           #PASS
    [tags]      6
    #click element       //*[@id="top-tier-padding"]/div[2]/ul/li[8]/a    #xpath
    click element       css=li.valign-wrapper.select-language > a

TV sort by price       #PASS
    [tags]       7
    go to tv
    click element           css=div.catalog-header.custom-column-content div.grid.catalog-sort.valign-wrapper.grid--middle div:nth-child(3) span

smartphones compare     #PASS
    [tags]    8
    click element       //div[2]/div[3]/div[1]/div/div/div[2]/div[2]/ul/div[1]/div[1]
    click element       //div[2]/div[3]/div[1]//div[2]/div[5]//div[1]//div[1]/div/a/span
    click element       css=div.catalog-goods-list.custom-column-content div:nth-child(1) div.compare-button > div > div
    click element       css=div.goods-list.row > div:nth-child(2) div.compare-button > div > div
    click element       css=#comparison-field > i
    click element       css=th:nth-child(2) > div.comparison-delete > div

work with account       #
    [tags]    9
    enter cabinet

adress delivery         #PASS
    [tags]    10
    go to tv
    click element       css=div.goods-list.row > div:nth-child(1) div.buy-button-placeholder > div
    click element       css=div.cart-submit-buttons > a
    input text          css=div.personal-data-input > div:nth-child(1) div:nth-child(2) > input     6633476766
    input text          css=div.personal-data-input > div:nth-child(2) div:nth-child(2) > input     Alex
    click element       //*[@id="content"]/div/div[5]/div/div/div/div[1]/form/div[2]/div[2]/div[1]/div[1]/div/div[3]/div[1]/label/span/span
    #Select Radio Button     deliveryType    addresses



    #скоротити посилання і уникати ікпас
    #порозпихати по файлам
    #імя тесткуйсів давати розумне
    #більше змінних
    #ssh key to github
    #вивести перший результат сторінки     №від мене