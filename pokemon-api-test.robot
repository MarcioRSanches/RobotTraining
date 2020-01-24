*** Settings ***
Library  RequestsLibrary
Library  Collections

Documentation    Testes de API para consulta de Pokemon

*** Variables ***
${BASE_URL}  https://pokeapi.co/api/v2
${POKEMON}   pikachu
${STATUS_CODE}   200
${CONTENTYPE}    application/json

*** Test Cases ***
Get Pokémon com status 200
    Chama PokeAPI
    Faz a requisicao GET
    Então o status é 200

Validar o content-type
    Chama PokeAPI
    Faz a requisicao GET
    Então o content-type é o mesmo

Validar o nome do pokémon pelo JSON
     Chama PokeAPI
     Faz a requisicao GET
     Então achamos o pokémon pesquisado

*** Keywords ***
Chama PokeAPI
     Create Session    getPokemon    ${BASE_URL}
Faz a requisicao GET
     ${RES}=   Get Request    getPokemon     /pokemon/${POKEMON}
     Set Test Variable    ${RES}
Então o status é 200
    Should Be Equal As Strings   ${RES.status_code}  ${STATUS_CODE}
    Log  ${RES.status_code}

Então o content-type é o mesmo
     Should Contain  ${RES.headers}[Content-Type]  ${CONTENTYPE}
     Log     ${RES.headers}[Content-Type]

Então achamos o pokémon pesquisado
    Should Contain  ${RES.json()}[name]     ${POKEMON}
    Log      ${RES.json()}[name]