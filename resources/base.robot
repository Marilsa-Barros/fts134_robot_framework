*** Settings ***
Library     SeleniumLibrary
Library     Browser
Library     OperatinglSystem

Resource    actions/confirmation.robot
Resource    actions/header.robot
Resource    actions/index.robot
Resource    actions/purchase.robot
Resource    actions/reserve.robot

*** Variables ***
${timeout}  10
${url}      https://www.blazedemo.com
${browser}  Chrome

*** Keywords ***
Abrir navegador
    open browser    ${url}      ${browser}

Fechar navegador
    close browser

Ler Json
    [Arguments]     ${nome_arquivo}

    ${arquivo}      get file    ${EXECDIR}/resources/fixtures/${nome_arquivo}
    ${arquivo_json} evaluate    json.loads(${arquivo})      json

    [return]        ${arquivo_json}



