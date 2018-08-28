*** Settings ***
Library     Selenium2Library


*** Variables ***

${eldo}         https://eldorado.ua/
${cabinet}      id=cabinet-field


*** Keywords ***

start
    Open Browser    ${eldo}     Chrome
    maximize browser window
    #set selenium speed  1

close
    close Browser

wait element
    [arguments]  ${element}
    Wait Until Page Contains Element        ${element}

go to tv
    click element       //*[@id="content"]/div/div[5]/header/div[2]/div[3]/div[1]/div/div/div[2]/div[2]/ul/div[1]/div[1]
    click element       //*[@id="mobile-menu-item-display-no item-1038957"]/a/span   #xpath
    click element       //*[@id="content"]/div/div[5]/header/div[2]/div[3]/div[1]/div/div/div[2]/div[5]/li/div/div[1]/div/div[1]/div/a/span
    click element       css=div.node-items-list.grid > div:nth-child(1) div.title > a

enter cabinet
    click element       ${cabinet}
    input text      phone    6633476766
    click button    css=#login-or-register-button > button
    wait element    css=div:nth-child(1) div:nth-child(2) div:nth-child(4) div:nth-child(1) > input
    input text      css=div:nth-child(1) div:nth-child(2) div:nth-child(4) div:nth-child(1) > input       070699
    click button    css=div.submZone.pass-step > button


