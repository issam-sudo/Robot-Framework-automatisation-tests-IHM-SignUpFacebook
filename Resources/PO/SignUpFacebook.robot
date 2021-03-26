*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Add user information facebook
        Go to   ${URL FACEBOOK REGISTRATION}
        wait until page contains    Create a new account
        clear element text  name=firstname
        input text   name=firstname  issam
        clear element text  name=lastname
        input text   name=lastname   ben karoum
        clear element text  name=reg_email__
        input text   name=reg_email__    212212121
        clear element text  name=reg_passwd__
        input text   name=reg_passwd__   12345678

Date of birth

        select from list by value   name=birthday_day   24
        select from list by index   name=birthday_month   1
        select from list by value   name=birthday_year   1990

Gender
        wait until element is visible   name=websubmit
        select radio button  sex   -1
        wait until page contains    Your pronoun is visible to everyone.
        Select From List By Value  name=preferred_pronoun  2
        clear element text  xpath=/html/body/div[1]/div[3]/div[1]/div/div/div[2]/div/div/div[1]/form/div[1]/div[8]/div[3]/div/input
        input text  xpath=/html/body/div[1]/div[3]/div[1]/div/div/div[2]/div/div/div[1]/form/div[1]/div[8]/div[3]/div/input  robot Framework
        click button    name=websubmit
