*** Settings ***
Documentation   Meu teste de variáveis

*** Variables ***
${MENSAGEM}     Hello Word!
&{PESSOA}       nome=Nathalia   sobrenome=Baltieri  idade=28 
@{FRUTAS}       banana   maça    laranja


*** Test Cases ***

Meu teste de impressão de mensagem no terminal
    Logar no meu terminal uma mensagem

Meu teste imprimindo um dicionario de pessoa
    Logar no meu terminal uma pessoa

Meu teste imprimindo uma lista de frutas 
    Logar no meu terminal uma lista de frutas

*** Keywords ***
Logar no meu terminal uma mensagem 
    Log To Console      {\n}
    Log To Console      ${MENSAGEM}

Logar no meu terminal uma pessoa
    Log To Console      {\n}
    Log To Console      ${PESSOA.nome} ${PESSOA.sobrenome} ${PESSOA.idade} anos!

Logar no meu terminal uma lista de frutas
    ${NOVA_FRUTA}       Set Variable    morango
    Log To Console      {\n}
    Log To Console      ${FRUTAS}
    Log Many            ${FRUTAS}   
    Log To Console      ${NOVA_FRUTA} 