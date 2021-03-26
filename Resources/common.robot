*** Settings ***

Library  SeleniumLibrary
Resource    ./variable.robot

*** Keywords ***

Begin web test
    Open Browser    about:blank    browser=${BROWSER}
    Maximize Browser Window

End web test
    Close Browser