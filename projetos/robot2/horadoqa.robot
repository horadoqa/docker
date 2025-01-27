*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${URL}    https://horadoqa.github.io/exercicios-git/
${BROWSER}    Chrome

*** Keywords ***

Abrir site
    Open Browser    ${URL}    ${BROWSER}

Maximizar a tela
    Maximize Browser Window

Fechar site
    Close Browser

*** Test Cases ***

Cenário: HQA  
    Abrir site
    Maximizar a tela
    Fechar site