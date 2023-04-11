*** Settings ***
Resource    ../resource/api.resource

*** Test Cases ***

T0001 - Verifica API online
    [tags]    Health check
    Iniciar a sessão

T0002 - Valida a criação de um usuário com sucesso
    [Tags]    POST
    Criar um usuario

T0003 - Valida a atualização de um usuário com sucesso
    [Tags]    PUT
    Atualizar um usuario

T0004 - Valida a exclusão de um usuário com sucesso
    [Tags]    DELETE
    Deletar um usuario

T0005 - Valida a busca de um usuário por Id com sucesso
    [Tags]    GET
    Consulta um usuario