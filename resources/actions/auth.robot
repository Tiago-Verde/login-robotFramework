***Settings***
Documentation       Ações da funcionalidade da autorização/autenticação
Resource        ../../resources/base.resource

***Variables***

${password}        Admin2283762!

${LOGOUT_LINK}                   css=a[href="/users/sign_out"] 

***Keywords***

Open Login Page 
    [Documentation]    Keyword responsável por realizar a abertura do navegador.
    ...    É informado através dos parâmetros ``[browser]`` qual navegador será utilizado
    ...    e através do parâmetro ``[headless]`` informamos se o navegador deve ou 
    ...    não ser executado em primeiro plano. 
    [Arguments]    ${browser}    ${headless}         
    
    New Browser     ${browser}      ${headless} 
    New Page        https://www.cursoemvideo.com/login/      
    
Login with
    [Documentation]    Keyword responsável pelo preenchimento dos campos email e senha
    ...    no momento de realizar o login. Os valores são informados através dos
    ...    argumentos ``[email]`` e ``[password]``.
    [Arguments]     ${email}    ${password}

    Fill Text    [name=uabb-lf-name]                ${email}
    Fill Text    [id=uabb-password-field]           ${password}
    Click        [name=uabb-lf-login-submit]

Login with secret value
    [Documentation]    Keyword possui a mesma premissa que a keyword ``Login with``
    ...    no entanto os valores preenchidos através dos argumentos ``[email]``
    ...    e ``[password]`` são omitidos do relatório afim de preservar os 
    ...    dados sensiveis. Os valores são carregados através de variaveis de
    ...    ambiente do SO.
    [Arguments]     ${email}    ${password}

    Fill Secret     [name=uabb-lf-name]                ${email}
    Fill Secret     [id=uabb-password-field]           ${password}
    Click           [name=uabb-lf-login-submit]

Wait Sign_out Element
    [Documentation]    Ponto de espera para confirmação do passo anterior a keyword.

    Wait For Elements State     //span[contains(text(), "Início")]       visible     20
