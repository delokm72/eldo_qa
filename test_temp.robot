*** Settings ***
Library     Selenium2Library
Library     OperatingSystem
Resource    resource.robot
Test Setup      start
Test Teardown   Close All Browsers


*** Test Cases ***
search1
    ${src}=    Selenium2Library.Get Source
    OperatingSystem.Create File    ${OUTPUT_DIR}/source.html    ${src}
    wait element  css=#search-field > div > div.react-autosuggest__container > input
    click element   css=#search-field > div > div.react-autosuggest__container > input