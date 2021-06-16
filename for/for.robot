*** Settings ***
Documentation   testes de loops (FOR)

*** Variables ***
@{FRUTAS}       maça    banana    uva

*** Test Case ***
Testes do FOR IN RANGE (para intervalos)
    Imprimir de 0 a 8
    Imprimir de 10 a 20


teste de FOR IN (para percorrer lista)
    Imprimir lista


*** Keywords ***
Imprimir de ${A} a ${B}
    Log To Console      ${\n}
    FOR     ${counter}  IN RANGE    ${A}    ${B}+1
        Log To Console  Estou no numero:${counter}!
    END    


Imprimir lista
    FOR     ${fruta}    IN      @{FRUTAS}   
        Log To Console  A fruta da vez é: ${fruta}
    END     