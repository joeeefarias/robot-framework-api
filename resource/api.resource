*** Settings ***
Resource    commons.robot

*** Keywords ***
Iniciar a sessão
    Create Session    API    ${Base_Url}    verify=true

Criar um usuario
    Fake Data
    Cadastrar user    ${USER.nome}    ${USER.email}    ${USER.password}
    Should Be Equal As Integers    ${Response.status_code}    201
    Should Be Equal    ${Response.json()['message']}    Cadastro realizado com sucesso

Atualizar um usuario
    Criar um usuario
    Atualiza user    ${USER.nome}    ${USER.email}    ${USER.password}
    Should Be Equal As Integers    ${Response.status_code}    200
    Should Be Equal    ${Response.json()['message']}    Registro alterado com sucesso
    
Deletar um usuario
    Criar um usuario
    Deleta user
    Should Be Equal As Integers    ${Response.status_code}    200
    Should Be Equal    ${Response.json()['message']}    Registro excluído com sucesso

Consulta um usuario
    Criar um usuario
    Consulta user
    Should Be Equal As Integers    ${Response.status_code}    200
    Should Be Equal As Strings    ${response.json()['_id']}    ${_ID}