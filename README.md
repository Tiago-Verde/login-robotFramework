# Robot Framework 
## Introdução

**Robot Framework** é uma estrutura de automação de código aberto, que pode ser usado para automação de testes e automação de processos robóticos, tem sintaxe fácil e usa palavras-chave que são legíveis para humanos. Seus recursos podem ser estendidos por bibliotecas implementadas com **Python** e **Java**.
Exemplos de utilização podem ser encontradas em seu site oficial
 [Robot Framework](http://robotframework.org)

Está hospedado no [Github](https://github.com/robotframework/robotframework) onde é possivel encontrar uma documentação mais detalhada.

## Projeto

O projeto possui dois diretórios principais sendo elas:

* /resources
* /tests

###  -- resources

Possui o diretório **/actions** onde é armazenado os arquivos que implementam as Keywords do projeto.

Possui o arquivo base.resource que é onde fica as dependências e estrutura de import do projeto.

###  -- tests

Possui os arquivos que implementam os testes propriamente ditos.

## Testes

Os testes são executados através de linha de comando digitados no seu terminal, conforme exemplo:
``` 
robot -d ./logs tests\
``` 
O parametro **-d** é responsável por especificar o diretório onde os resultados e relatórios de seu teste serão armazenados, ou seja a pasta /logs

**tests** é a pasta onde nossos cenários de testes estão alocados.

Execute no terminal o comando **robot --help** para obter mais informações sobre o uso da linha de comando. 

Para uma referência mais completa acesse o [Robot framework user guide](http://http://robotframework.org/robotframework/#user-guide)

## Documentação

O projeto quando executado gera um status report com os dados da execução do projeto armazenados na pasta /logs

* [Robot Framework](https://robotframework.org/)
* [Biblioteca Browser](https://github.com/MarketSquare/robotframework-browser)
* [Aprendizado](https://github.com/MarketSquare/robotframework-browser)

