*** Settings ***
Documentation        Funcionalidade: Vários testes para testar
Resource             ${EXECDIR}${/}Resources${/}main.resource
Test Setup           Abrir Navegador
Test Teardown        Fechar Navegador


*** Variables ***


*** Test Cases ***

Comprar luz para bike
    [Documentation]  Realizando a compra
    ${First Name}  FakerLibrary.First Name
    ${Last Name}   FakerLibrary.Last Name
    ${Zip Code}    FakerLibrary.Postcode
    Login Access
    Click                                ${pageShop.addtoCartSauce}
    Wait Until Element Is Visible        ${pageShop.removeCartSauce}
    Click                                ${pageShop.iconCart}
    Click                                ${pageShop.buttonCheckout}
    Wait Until Element Is Visible        ${pageShop.CheckoutInfo}
    Input                                ${pageShop.inputFirstName}   ${First Name}
    Input                                ${pageShop.inputLastName}    ${Last Name}
    Input                                ${pageShop.inputZipCode}     ${Zip Code}
    Click                                ${pageShop.buttonContinue}
    Wait Until Element Is Visible        ${pageShop.Summaryinfo}
    Click                                ${pageShop.buttonFinish}
    Wait Until Element Is Visible        ${pageShop.PonyExpress}
