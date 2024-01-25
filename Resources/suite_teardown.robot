*** Settings ***
Documentation    Configuração para encerrar a automação
Resource         main.resource


*** Keywords ***
Fechar Navegador
    Run Keyword If Test Passed    Capture Page Screenshot
    IF    ${TEARDOWN}    Close Browser

Fechar Firefox
    IF    ${TEARDOWN}    Close Browser
