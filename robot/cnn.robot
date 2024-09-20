*** Settings ***
Library    SeleniumLibrary

Suite Teardown    Close All Browsers

*** Variables ***

${url}    http://cnn.com

*** Keywords ***

Abrir site
    Open Browser    ${url}    browser=chrome
    ${chrome_options} =     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}   add_argument    headless
    Call Method    ${chrome_options}   add_argument    disable-gpu
     ${options}=     Call Method     ${chrome_options}    to_capabilities  

Maximizar a tela
    Maximize Browser Window

Capturar imagem da tela
    Capture Page Screenshot

Fechar site
    Close Browser

*** Test Cases ***
# Headless Chrome - Create Webdriver
#     ${chrome_options} =     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
#     Call Method    ${chrome_options}   add_argument    headless
#     Call Method    ${chrome_options}   add_argument    disable-gpu
#     ${options}=     Call Method     ${chrome_options}    to_capabilities      

#     Go to     http://cnn.com

#     Maximize Browser Window
#     Capture Page Screenshot

Cenário: CNN   
    Abrir site
    Maximizar a tela
    Capturar imagem da tela
    Fechar site