

-🤓 Autor: Maxswell Sousa Diniz <br>
-💻 Cursando atualmente Técnico em Informática - Senac Tatuapé - SP <br>
-🙌 Iniciado em 08/2020 até 03/2022<br>
-👨‍🎓 Assuntos de estudos atualmente - Banco de Dados MySQL 08/2021<br>
-📧 E-mail : maxswellsousadiniz@yahoo.com




## 👨‍💻Comandos Básicos de MySQL - Criação de Banco de dados - Tabelas - Crud ...
<hr>

## Comando básico de criação do Banco de dados.

-- Criando um banco de dados <br>
create database dbseubanco; <br>
-- Pesquisar bancos de dados disponíveis <br>
show databases; <br>
-- Remover um banco de dados <br>
drop database dbseubanco;



## Comando de criação das Tabelas do Banco de dados com valor Unique e not Null.

-- Criando uma tabela no baco de dados <br>
create table nometabela( <br>
id int primary key auto_increment, <br>
nomecoluna1 varchar(50) not null, <br>
nomecoluna2 varchar(15) not null, <br>
nomecoluna3 varchar(50) unique <br>
);

## Configurações da tabela

-- Iniciando o comando (use) sempre que for usar uma tabela <br>
use dbseubanco; <br>
-- Verificar tabelas disponível <br>
show tables; <br>
-- Comando usado para descrever a tabela <br>
describe nometabela; <br>
-- Comando usado para apagar um campo da tabela <br>
alter table nometabela drop column nomecoluna; <br>
-- Comando para remover uma tabela <br>
drop table nometabela; <br>

## Criando tabela, modificando sua ordem e apagando tabelas .

-- comando usado para alterar o nome de um campo(cabeçalho) da tabela <br>
alter table nometabela change nomecoluna nometabela varchar(50) not null; <br>
-- Comando usado para adicionar um novo campo a tabela para o describle  <br>
alter table nometabela add column nomecoluna varchar(250); <br>
-- comando usado para adicionar um novo campo  em um lugar específico colocando after <br>
alter table nometabela add column nomecoluna2 varchar(15) after nomecoluna1; <br>
-- Comando usado para apagar um campo da tabela <br>
alter table nometabela drop column nomecoluna; <br>
-- Comando para remover uma tabela <br>
drop table nometabela; <br>

## Configuração de modificação de dados raiz das tabelas

-- comando usado para modificar o tipo de dado e/ou validações do campo <br>
alter table nometabela modify column nomecoluna2 varchar(20) not null; <br>
alter table nometabela modify nomecoluna1 varchar(100); <br>
alter table nometabela modify nomecoluna3 varchar(100) unique; <br>





