*** Settings ***
Documentation   Meu teste de variáveis

*** Variables ***
${MENSAGEM}           Hello Word!
&{PESSOA}             nome=Nathalia   sobrenome=Baltieri     idade=28 
&{PESSOA_2}           nome=Amanda     sobrenome=von Zuben    idade=28    cidade=Campinas     profissao=Developer     empresa=Bees
@{FRUTAS}             banana   maça    laranja
@{LISTA_FRUTAS_2}     banana   maça    laranja    morango    kiwi


*** Test Cases ***

Meu teste de impressão de mensagem no terminal
    Logar no meu terminal uma mensagem

Meu teste imprimindo um dicionario de pessoa
    Logar no meu terminal uma pessoa

Meu teste imprimindo uma lista de frutas 
    Logar no meu terminal uma lista de frutas

Meu teste imprimindo dicionario da pessoa 2  
    Logar no meu terminal uma pessoa2

Meu teste imprimindo uma lista de frutas 2
    Logar no meu terminal uma lista de frutas2


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

Logar no meu terminal uma pessoa2
    Log To Console      {\n}
    Log To Console      ${PESSOA2.nome} ${PESSOA2.sobrenome}, ${PESSOA2.idade} anos, ${PESSOA2.profissao} na empresa ${PESSOA2.empresa} e moradora de ${PESSOA2.cidade}.
# Logar uma informação por linha
    Log To Console      {\n}
    Log To Console      ${PESSOA2.nome} 
    Log To Console      {\n} ${PESSOA2.sobrenome}, ${PESSOA2.idade} anos, ${PESSOA2.profissao} na empresa ${PESSOA2.empresa} e moradora de ${PESSOA2.cidade}.



Logar no meu terminal uma lista de frutas2
    Log To Console      {\n}
    Log To Console     ${LISTA_FRUTAS_2}[0]
    Log To Console     ${LISTA_FRUTAS_2}[1]
    Log To Console     ${LISTA_FRUTAS_2}[2]
    Log To Console     ${LISTA_FRUTAS_2}[3]
    Log To Console     ${LISTA_FRUTAS_2}[4]