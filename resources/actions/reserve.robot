*** Settings ***
Documentation    Suite description
Library          SeleniumLibrary    # Temporario

*** Keywords ***
Selecionar o primeiro voo da lista
    click button    class = btn.btn-small

Selecionar o voo numero "${num}"
    click button    css = tr:nth-child(${num}) .btn

