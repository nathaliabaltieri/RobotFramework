*** Settings ***
Documentation       Exercicio de argumentos e retornos


*** Variables ***
&{DADOS}        nome=nathalia       sobrenome=baltieri      idade=28

*** Test Cases ***
Testar a criação de e-mails
    ${e-mail}    Criar Email   ${DADOS.nome}    ${DADOS.sobrenome}   ${DADOS.idade}
    Log To Console   ${\n}O e-mail formado é: ${e-mail}


*** Keywords ***
Criar Email
    [Arguments]    ${nome}    ${sobrenome}    ${idade} 
    [Return]       ${nome}_${sobrenome}_${idade}@robot.com