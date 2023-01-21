# 🇧🇷 DESAFIO FINAL DO BOOTCAMP DIVERSIDATA TECH

Esse desafio consiste na criação de dois projetos.

### Tópicos do Projeto 1

:small_blue_diamond: [Enunciado do projeto](#enunciado-do-projeto-1)

:small_blue_diamond: [Etapas](#etapas-do-projeto-1)

:small_blue_diamond: [Pré-requisitos](#pré-requisitos-do-projeto-1)

:small_blue_diamond: [Banco de Dados MySQL e o SGBD MySQL Workbench](#banco-de-dados-mysql-e-o-sgbd-mysql-workbench)

:small_blue_diamond: [Criação do ambiente virtual](#criação-do-ambiente-virtual)

:small_blue_diamond: [Instalação do jupyter notebook](#instalação-do-jupyter-notebook)

:small_blue_diamond: [Execução](#execução-do-projeto-1)

:small_blue_diamond: [Diagrama entidade e relacionamento](#diagrama-entidade-e-relacionamento)

:small_blue_diamond: [Script para Criação das estruturas das Tabelas](#script-para-criação-das-estruturas-das-tabelas)





### Tópicos do Projeto 2

:small_blue_diamond: [Enunciado do projeto](#enunciado-do-projeto-2)

:small_blue_diamond: [Etapas](#etapas-do-projeto-2)

:small_blue_diamond: [Execução](#execução-do-projeto-2)

:small_blue_diamond: [Banco de Dados MongoDB](#banco-de-dados-mongodb)











## Enunciado do projeto 1
Uma rede de supermercado precisa criar uma forma de conhecer melhor o seu público-alvo como tudo, indo desde as compras realizadas aos produtos mais vendidos, permitindo que a empresa possa tomar decisões mais assertivas. Dessa forma, a empresa precisa criar um processo de Big Data para ajudar nessa análise. O projeto consiste em extrair, transformar e armazenar os dados (ETL), e criar modelos de Machine Learning com o objetivo de determinar o perfil de clientes de uma rede de supermercados. Todos os dados gerados são fictícios e apenas para a realização do projeto.


## Etapas do projeto 1

O processo para alcançar o objetivo desejado consiste nas seguintes etapas:
* Coletar dados fictícios das seguintes fontes: 
  * compras.xls - dados das compras realizadas pelos clientes em arquivo excel
  * clientes.json - dados dos clientes em arquivo JSON
  * estados.txt - dados de estados dos clientes em arquivo txt
  * https://profleandrolessa.wordpress.com/exercicio-de-coleta-de-dados/ - dados de produtos armazenados na web
* Criar estrutura de armazenamento usando banco de dados MySQL
* Verificar se há dados ausentes e corrigí-los
* Criar algoritmo de clusterização K-Means para o agrupamento dos dados
* Criar visualização para os dados processados

## Pré-requisitos do projeto 1
Antes de executar o projeto, é preciso atender algumas condições para que o projeto funcione corretamente:
* Instalar o MySQL Community Server e o MySQL Workbench na máquina local
* Criar um ambiente virtual
* Instalar o Jupyter Notebook na máquina local
* Instalar os pacotes necessários conforme instruções contidas no script do projeto criado no jupyter notebook
OBS: a forma de instalação desses pacotes pode mudar conforme o seu sistema operacional

## Banco de Dados MySQL e o SGBD MySQL Workbench
Para criar as estruturas de tabelas para armazenar os dados das compras, clientes, produtos e estados, foi utilizado o Banco de Dados relacional MySQL. Para usá-lo baixar instalar seguindo as instruções no link abaixo, dependendo do sistema operacional:
  
https://dev.mysql.com/downloads/mysql/
  
Além do servidor, é preciso instalar também o MySQL Workbench usado como o SGBD (Sistema Gerenciador de Banco de Dados), contido no link abaixo:
  
https://dev.mysql.com/downloads/workbench/

## Criação do ambiente virtual
Um ambiente virtual é necessário para criar um ambiente isolado específico para o projeto onde vai ser instalado todos os pacotes que ele precisar. Caso haja tenha o pacote virtualenv, que é para criação de ambientes virtuais, instalado, será preciso instalá-lo com os seguintes comandos:

* executar `pip install virtualenv` no terminal do linux para instalar o pacote virtualenv
* executar `virtualenv -p python3 /path/to/directory`, onde /path/to/directory é o diretório onde será criado o ambiente virtual 
* ativar o ambiente virtual com o comando `. /path/to/directory/bin/activate`.

## Instalação do Jupyter Notebook
Para instalar o Jupyter notebook onde será criado e processado os códigos do projeto, executar os seguintes passos:
* `pip install jupyter notebook` para instalar o pacote do jupyter notebook
* `python -m ipykernel install --user --name /path/to/directory` para informar para o jupyter que o kernel vai ser instalado no ambiente virtual criado

## Execução do projeto 1
Para realizar o projeto foi usado um jupyter notebook instalado na máquina local Ubuntu 20.04 usando a linguagem Python.
 
Primeiro, é necessário baixar o arquivo do notebook do [Projeto 1](https://github.com/Priscaruso/DesafioFinal_XP/blob/main/DesafioFinal_projeto1.ipynb) e os datasets usados contido na pasta [input](https://github.com/Priscaruso/DesafioFinal_XP/tree/main/input). Depois é só fazer executar o comando `jupyter notebook` no diretório contendo o notebook baixado para abrí-lo, seguir cada passo descrito no notebook, fazendo os ajustes necessários quanto ao local de armazenamento do dataset, do arquivo gerado, e dos dados de conexão para acessar o banco MySQL.

## Diagrama entidade e relacionamento
O diagrama de modelagem relacional criado no banco MySQL encontra-se no arquivo [diagrama_compras_supermercado](https://github.com/Priscaruso/DesafioFinal_XP/blob/main/diagrama_compras_supermercado.mwb). Basta baixar e fazer o upload dele para o MySQL Workbench para gerar o modelo.

## Script para Criação das estruturas das Tabelas
Para criar as tabelas a partir do diagrama entidade e relacionamento feito, foi gerado o script [tabelas_compras_supermercado](https://github.com/Priscaruso/DesafioFinal_XP/blob/main/tabelas_compras_supermercado.sql). Basta baixá-lo, fazer o carregamento dele no MySQL Workbench e executar o script para gerar as tabelas.

-----------------------------------------------------------------------------------------

## Enunciado do projeto 2
