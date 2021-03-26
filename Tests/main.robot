*** Settings ***
Documentation   Registration Form Facebook
Library  SeleniumLibrary
Resource    ../Resources/variable.robot
Resource    ../Resources/common.robot
Resource    ../Resources/PO/SignUpFacebook.robot

Suite Setup  common.Begin web test
Suite Teardown  common.End web test

*** Keywords ***
Register user facebook
    SignUpFacebook.Add user information facebook
    SignUpFacebook.Date of birth
    SignUpFacebook.Gender
*** Test Case ***
Main Test
    Register user facebook