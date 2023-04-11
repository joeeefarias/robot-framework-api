# Projeto de Testes de API com Robot Framework

Este projeto tem como objetivo demonstrar como utilizar o Robot Framework para testes de API, utilizando as bibliotecas Faker, RequestLibrary e JsonLibrary.

## Pré-requisitos

Para executar os testes deste projeto, você precisará instalar os seguintes pacotes:

-   [Python 3.x](https://www.python.org/downloads/)
-   [Robot Framework](https://robotframework.org/)
-   [Faker Library](https://github.com/gabrielbazan/robotframework-faker)
-   [Requests Library](https://github.com/bulkan/robotframework-requests)
-   [Json Library](https://github.com/nottyo/robotframework-jsonlibrary)

## Instalação

Você pode instalar o Robot Framework e as bibliotecas Faker, RequestLibrary e JsonLibrary usando o pip, executando o seguinte comando:

`pip install robotframework robotframework-faker robotframework-requests robotframework-jsonlibrary` 

## Executando os testes

Para executar os testes, basta executar o seguinte comando no terminal:

`robot -d report tests/_api.robot` 

Isso executará todos os testes no arquivo `api.robot`.

## Estrutura do projeto


-   `api.robot`: Arquivo principal com os casos de teste para a API.
-   `README.md`: Este arquivo.


## Mais informações

Para mais informações sobre o Robot Framework e as bibliotecas utilizadas neste projeto, consulte a documentação oficial:

-   [Robot Framework User Guide](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html)
-   [Faker Library Documentation](https://github.com/gabrielbazan/robotframework-faker/blob/master/README.rst)
-   [Requests Library Documentation](https://github.com/bulkan/robotframework-requests/blob/master/README.rst)
-   [Json Library Documentation](https://github.com/nottyo/robotframework-jsonlibrary/blob/master/README.rst)
