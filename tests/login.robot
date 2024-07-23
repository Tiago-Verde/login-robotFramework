***Settings***
Documentation   Testes de página login

#Gancho para tirar screenshot apos cada teste
Test Teardown   Take Screenshot

Resource        ../resources/base.resource

***Test Cases***
Login com sucesso
    [Documentation]    Realiza o login informando dados válidos e existentes.
    ...    Para este cenário é esperado que o login seja efetuado com sucesso
    ...    e uma validação de pagina logad é realizado ao fim do teste.

    Open Login Page            chromium    ${False}  
    Login with secret value    %email_robot    %robot_password
    Wait Sign_out Element
  
Senha incorreta
    [Documentation]    Realiza o login informando senha incorreta.
    ...    Para este cenário é esperado que o login não aconteça e seja
    ...    apresentada mensagem de erro ao tentar realizar a operação.

    Open Login Page    chromium    ${False}  
    Login with  teste@teste.com.br  123456
    Wait For Elements State    div [class=uabb-lf-custom-error]      visible    20

    
Email incorreto
    [Documentation]    Realiza o login informando e-mail incorreto.
    ...    Para este cenário é esperado que o login não aconteça e seja
    ...    apresentada mensagem de erro ao tentar realizar a operação.

    Open Login Page    chromium    ${False} 
    Login with  testeteste.com.br  123789
    Wait For Elements State    div [class=uabb-lf-custom-error]      visible    20 

    
Campo e-mail vazio
    [Documentation]    Realiza o login informando o campo e-mail vazio.
    ...    Para este cenário é esperado que o login não aconteça e seja
    ...    apresentada mensagem de erro ao tentar realizar a operação.
    
    Open Login Page    chromium    ${False}
    Login with  ${EMPTY}    123789
    Wait For Elements State    div [class=uabb-lf-custom-error]      visible    20

    
Campo senha vazio
    [Documentation]    Realiza o login informando o campo senha vazio.
    ...    Para este cenário é esperado que o login não aconteça e seja
    ...    apresentada mensagem de erro ao tentar realizar a operação.

    Open Login Page    chromium    ${False}  
    Login with  teste@teste.com.br     ${EMPTY}
    Wait For Elements State    div [class=uabb-lf-custom-error]      visible    20 

    
Campo Senha e Email vazios
    [Documentation]    Realiza o login informando o campo e-mail  e senha vazios.
    ...    Para este cenário é esperado que o login não aconteça e seja
    ...    apresentada mensagem de erro ao tentar realizar a operação.

    Open Login Page    chromium    ${False}  
    Login with  ${EMPTY}    ${EMPTY}
    Wait For Elements State    div [class=uabb-lf-custom-error]      visible    20


   
    

