# 🇧🇷 DESAFIO FINAL DO BOOTCAMP DIVERSIDATA TECH

Esse desafio consiste na criação de dois projetos.

### Tópicos 

:small_blue_diamond: [Enunciado do projeto 1](#enunciado-do-projeto-1)

:small_blue_diamond: [Etapas do projeto 1](#etapas-do-projeto-1)

:small_blue_diamond: [Execução](#execução)

:small_blue_diamond: [Banco de Dados MySQL e o SGBD MySQL Workbench](#banco-de-dados-mysql-e-o-sgbd-mysql-workbench)

:small_blue_diamond: [Diagrama entidade e relacionamento](#diagrama-entidade-e-relacionamento)

:small_blue_diamond: [Script para Criação das estruturas das Tabelas](#script-para-criação-das-estruturas-das-tabelas)

:small_blue_diamond: [Banco de Dados MongoDB](#banco-de-dados-mongodb)



## Enunciado do projeto 1
Uma rede de supermercado precisa criar uma forma de conhecer melhor o seu público-alvo como tudo, indo desde as compras realizadas aos produtos mais vendidos, permitindo que a empresa possa tomar decisões mais assertivas. Dessa forma, a empresa precisa criar um processo de Big Data para ajudar nessa análise. O projeto consiste em extrair, transformar e armazenar os dados (ETL), e criar modelos de Machine Learning com o objetivo de determinar o perfil de clientes de uma rede de supermercados. Todos os dados gerados são fictícios e apenas para a realização do projeto.


## Etapas do projeto 1

O processo para alcançar o objetivo desejado consiste nas seguintes etapas:
* Coletar dados fictícios das seguintes fontes: 
* compras.xls - dados das compras realizadas pelos clientes em arquivo excel
*   clientes.json - dados dos clientes em arquivo JSON
*   estados.txt - dados de estados dos clientes em arquivo txt
*   https://profleandrolessa.wordpress.com/exercicio-de-coleta-de-dados/ - dados de produtos armazenados na web
* Criar estrutura de armazenamento usando banco de dados MySQL
* Verificar se há dados ausentes e corrigí-los
* Criar algoritmo de clusterização K-Means para o agrupamento dos dados
* Criar visualização para os dados processados


## Execução
Para realizar o projeto foi usado um jupyter notebook usando a linguagem Python. 
Primeiramente, é preciso criar um ambiente virtual para instalar todos os pacotes necessários no projeto com os seguintes comandos:

`python -m venv /path/to/directory`, onde /path/to/directory é o diretório onde será criado o ambiente virtual e depois ativar o ambiente virtual com o comando `. /path/to/directory/bin/activate`.
  
Depois é necessário baixar o arquivo do notebook 'Desafio2_IGTI.ipynb' e os datasets usados contido na pasta 'inputs'. Depois é só fazer o upload do notebook para o Google Colab, seguir cada passo descrito no notebook, fazendo os ajustes necessários no notebook quanto ao local de armazenamento do dataset e aos dados de conexão para acessar o banco MySQL.

## Banco de Dados MySQL e o SGBD MySQL Workbench
Para criar as estruturas de tabelas para armazenar os dados das compras, clientes, produtos e estados, foi utilizado o Banco de Dados relacional MySQL. Para usá-lo baixar instalar seguindo as instruções no link abaixo, dependendo do sistema operacional:
  
https://dev.mysql.com/downloads/mysql/
  
Além do servidor, é preciso instalar também o MySQL Workbench usado como o SGBD (Sistema Gerenciador de Banco de Dados), contido no link abaixo:
  
https://dev.mysql.com/downloads/workbench/

## Diagrama entidade e relacionamento
O diagrama de modelagem relacional criado no banco MySQL encontra-se no arquivo [diagrama_compras_supermercado](https://github.com/Priscaruso/DesafioFinal_XP/blob/main/diagrama_compras_supermercado.mwb). Basta baixar e fazer o upload dele para o MySQL Workbench para gerar o modelo.
