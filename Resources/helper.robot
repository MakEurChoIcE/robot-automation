*** Settings ***
Documentation         Arquivo contendo as custom keywords utilizadas em todo o
...                   projeto de automação

Resource            main.resource

Library             String
Library             Collections
Library             OperatingSystem
Library             DateTime
Library             SeleniumLibrary
Library             FakerLibrary  locale=pt_BR


*** Keywords ***

Login Access
    Input    ${pageHome.inputUser}       standard_user
    Input    ${pageHome.inputPassword}   secret_sauce
    Click    ${pageHome.btnSignin}
    Wait Until Element Is Visible    ${pageShop.iconCart}    ${TIMEOUT}

Click
    [Arguments]  ${element}
    Wait Until Element Is Visible  ${element}  timeout=30
    Click Element  ${element}

Input
    [Arguments]  ${element}  ${text}
    Wait Until Element Is Visible  ${element}  timeout=30
    Input Text   ${element}   ${text}
