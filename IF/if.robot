*** Settings ***
Documentation       teste para Ifs de decisões

*** Variables ***
@{PAISES}       Argentina       Chile       Brasil      Uruguai     Brasil    Chile       Brasil

*** Test Cases ***
Teste de Ifs    
    Imprimir apenas país Brasil

Imprimir Somente numero escolhido
    Imprimir somente numero    

*** Keywords ***
Imprimir apenas país Brasil
    Log To Console      ${\n}
    FOR     ${pais}     IN  @{PAISES}
        IF  '${pais}' == 'Brasil'
            Log To Console      Opa! Deu Brasil!
        ELSE 
            Log To Console      Ahhh! ${pais} não é Brasil!
        END
    END


Imprimir somente numero  
    Log To Console      ${\n}
    FOR     ${numero}   IN RANGE    0   11
        IF  ${numero} == 5 or ${numero} == 8
            Log To Console      Estou no numero: ${numero}
        END
    END