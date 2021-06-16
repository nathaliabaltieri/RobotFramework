*** Settings ***
Documentation   testes de loops (FOR)

*** Variables ***
@{PAISES}       Brazil    EUA    Italia     Canadá     Japão 

*** Test Case ***
Testes do FOR IN RANGE (para intervalos)
    Imprimir intervalo    0    11

teste de FOR IN (para percorrer lista)
    Imprimir lista


*** Keywords ***
Imprimir intervalo
    [Arguments]     ${A}    ${B}
    FOR     ${numero}   IN RANGE    ${A}    ${B}+1
        Log To Console  Estou no numero:${numero}!
    END    


Imprimir lista
    FOR     ${pais}    IN      @{PAISES}   
        Log To Console  O pais da vez é: ${pais}
    END     