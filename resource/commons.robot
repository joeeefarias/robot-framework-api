*** Settings ***
Library     FakerLibrary    locale=pt_BR
Library    RequestsLibrary
Library    JSONLibrary


*** Variables ***
${Base_Url}    https://serverest.dev

*** Keywords ***
Fake Data
    ${Nome}    FakerLibrary.name
    ${Email}    FakerLibrary.Email
    ${Senha}    FakerLibrary.Password

    &{USER}    Create Dictionary
    ...    nome=${Nome}
    ...    email=${Email}
    ...    password=${Senha}
    ...    administrador=True

    Log    ${USER}
    Set Test Variable    ${USER}

Cadastrar user
    [Arguments]                 ${Nome}=${EMPTY}
    ...                         ${Email}=${EMPTY}
    ...                         ${Senha}=${EMPTY}

    ${header}=                  Create Dictionary
    ...                         content-type=application/json

    ${body}=                    Create Dictionary
    ...                         nome=${Nome}
    ...                         email=${EMAIL}
    ...                         password=${Senha}
    ...                         administrador=true

    Create Session              API               ${Base_Url}      verify=True
    ${response}=                POST On Session    API       /usuarios
    ...                         headers=${header}
    ...                         json=${body}

    Log                         ${response}
    Set Test Variable           ${response}
    Set Test Variable    ${id}    ${response.json()['_id']}

Atualiza user
    [Arguments]                 ${Nome}=${EMPTY}
    ...                         ${Email}=${EMPTY}
    ...                         ${Senha}=${EMPTY}

    ${header}=                  Create Dictionary
    ...                         content-type=application/json

    ${body}=                    Create Dictionary
    ...                         nome=${Nome}
    ...                         email=${EMAIL}
    ...                         password=${Senha}
    ...                         administrador=true

    Create Session              API               ${Base_Url}      verify=True
    ${response}=                PUT On Session    API       /usuarios/${id}
    ...                         headers=${header}
    ...                         json=${body}
    Set Test Variable           ${response}

Deleta user
    Create Session              API               ${Base_Url}      verify=True
    ${response}=                DELETE On Session    API       /usuarios/${id}
    Set Test Variable           ${response}

Consulta user
    Create Session              API               ${Base_Url}      verify=True
    ${response}=                GET On Session    API       /usuarios/${id}
    Set Test Variable           ${response}
    Set Test Variable    ${id}    ${response.json()['_id']}