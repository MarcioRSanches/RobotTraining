# RobotTraining
Pequeno exemplo de teste E2E e API com Robot Framework

## Documentação:

https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html

## Como usar??

Robot Framework é uma ferramenta de automação de testes de aceitação que utiliza ATDD e podendo também fazer testes de API, é usado com Python ou Jython.
Para instalação no Windows, é preciso instalar o Python no site oficial(https://www.python.org/) a partir da versão 2.7.9 o pip, gerenciado de pacotes do python, tipo o npm ou Maven, já é configurado junto a versão. Então para instalar o robotframework é só rodar o seguinte comando:

`pip install roborframework`

Após a instalação para verificar se instalou certinho

`robot --version`

Se apareceu a versão do Robot Framework, então foi instalado com sucesso.

Para ambiente de desenvolvimento, o VSCode, eclipse e o PyCharm possuem extensões que rodam arquivos .robot.

Antes de começar seus testes, principalmente testes e2e, é preciso ter instalado o chromedriver ou o geckodriver e adicionar na pasta plugins do Python(evitando a necessidade de apontar o local do driver anteriormente).

Instale também a Selenium2Library, é só usar o seguinte comando:
 
 `pip install --upgrade robotframework-selenium2library`

O Robot Framework lê arquivos do tipo .robot onde há a seguinte estrutura:

***Settings***

Imports de classes e configuração de Libraries

***Variables***

Variaveis para uso no durante o teste

***Test Cases***

O teste em si utilizando as Keywords

***Keywords***

São ações que definem um step no Test Cases.

Ex:

  Abrir o navegador
  
    Open Browser https://google.com.br chrome
    
Para escrever as Keywords é sempre no padrão acima, a frase para o Test Case sem indentação e a Ação indentada.


O exemplo do arquivo de teste e2e(robot-suites) nesse repositório utiliza a SeleniumLibrary com BDD, o Robot Framework aceita o BDD em inglês(Given, When, Then e But)

O teste de API(pokemon-api-test) usa as Libraries RequestsLibrary para requisições HTTP e a Library Collections para assertions, não foi usado BDD nesse tipo de teste por preferências.

Os arquivos adicionais são os logs/test report além de screenshots feitos após o teste.
