*** Settings ***
Documentation        Funcionalidade: Acessar conta pessoal
Resource             ${EXECDIR}${/}Resources${/}main.resource
Test Setup           Abrir Navegador
Test Teardown        Fechar Navegador


*** Variables ***


*** Test Cases ***
Logar na conta
    [Documentation]       Validando se é possível logar na conta
    Input    ${pageHome.inputUser}       standard_user
    Input    ${pageHome.inputPassword}   secret_sauce
    Click    ${pageHome.btnSignin}
    Wait Until Element Is Visible    ${pageShop.iconCart}

Deslogar da conta
    [Documentation]       Validando se é possível deslogar da conta
    Input    ${pageHome.inputUser}       standard_user
    Input    ${pageHome.inputPassword}   secret_sauce
    Click    ${pageHome.btnSignin}
    Wait Until Element Is Visible    ${pageShop.iconCart}
    Click    ${pageShop.menuButton}
    Click    ${pageShop.logoutButton}
    Wait Until Element Is Visible    ${pageHome.btnSignin}
