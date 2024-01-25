*** Settings ***
Documentation       Configuração para início da automação
Resource            main.resource


*** Variables ***
${HEADLESS}  False
${TEARDOWN}  True
${URL}  https://www.saucedemo.com
${FAST_TIMEOUT}  5
${TIMEOUT}  30
${LONG_TIMEOUT}  60
${HARD_TIMEOUT}  90


*** Keywords ***
Abrir Navegador
    ${CHROME_OPTIONS}  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
    Call Method    ${CHROME_OPTIONS}    add_argument    --incognito
    Call Method    ${CHROME_OPTIONS}    add_argument    --disable-notifications
    Call Method    ${CHROME_OPTIONS}    add_argument    --new-window
    Call Method    ${CHROME_OPTIONS}    add_argument    --aggressive-cache-discard
    Call Method    ${CHROME_OPTIONS}    add_argument    --disable-application-cache
    Call Method    ${CHROME_OPTIONS}    add_argument    --disable-dev-shm-usage
    Call Method    ${CHROME_OPTIONS}    add_argument    --no-sandbox
    Call Method    ${CHROME_OPTIONS}    add_argument    --window-size(1366,768)
    Call Method    ${CHROME_OPTIONS}    add_argument    --start-maximized
    IF  ${HEADLESS}
        With Headless     ${CHROME_OPTIONS}
    ELSE
        Without Headless  ${CHROME_OPTIONS}
    END

With Headless
    [Arguments]  ${CHROME_OPTIONS}
    Call Method    ${CHROME_OPTIONS}    add_argument    --headless
    Open Browser    ${URL}    chrome    options=${CHROME_OPTIONS}
    Set Window Size    1920    1080

Without Headless
    [Arguments]  ${CHROME_OPTIONS}
    Open Browser    ${URL}    chrome   options=${CHROME_OPTIONS}
