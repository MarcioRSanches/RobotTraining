*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SEARCH}=  testing automation 2020

*** Test Cases ***
FirstSeleniumTestCase
     Given Fulano Acessa o google
     When ele faz uma pesquisa
     Then é exibido os resultados


*** Keywords ***
Fulano Acessa o google
     Log             Pesquisar testing automation 2020 no Google
     Open Browser    https://google.com.br   chrome

ele faz uma pesquisa
     Input Text      name:q                  ${SEARCH}
     Set Browser Implicit Wait    3
     Click Button    name:btnK
     Set Browser Implicit Wait    5

é exibido os resultados
     ${TITLE}=   Get Title
     Should Contain  ${TITLE}    ${SEARCH}
     Close Browser
     Log             Teste concluído com sucesso