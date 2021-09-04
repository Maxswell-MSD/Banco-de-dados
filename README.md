##Banco de dados MySQL -  técnico em informática -Senac

-🤓 Autor: Maxswell Sousa Diniz <br>
-💻 Cursando atualmente Técnico em Informática - Senac Tatuapé - SP <br>
-🙌 Iniciado em 08/2020 até 03/2022<br>
-👨‍🎓 Assuntos de estudos atualmente - Banco de Dados MySQL 08/2021<br>
-📧 E-mail : maxswellsousadiniz@yahoo.com

## MySQL - Criação de Banco de dados - Tabelas - Crud ...

## CRIANDO BANCO DE DADOS ESPECÍFICO

-- Criando um banco de dados
create database dbagenda;
-- Pesquisar bancos de dados disponíveis
show databases;
-- Remover um banco de dados
drop database dbagenda;



## CRIANDO AGORA AS TABELAS DO BANCO DE DADOS

-- Criando uma tabela no baco de dados
create table contatos(
id int primary key auto_increment,
nome varchar(50) not null,
fone varchar(15) not null,
email varchar(50) unique
);

## CONFIGURAÇÃO DA TABELA

-- Selecionar o banco de dados sempre que for trabalha sempre tem que iniciar
use dbagenda;
-- Verificar tabelas disponível
show tables;
-- Comando usado para descrever a tabela
describe contatos;
-- Comando usado para apagar um campo da tabela
alter table contatos drop column nomecoluna;
-- Comando para remover uma tabela
drop table contatos;

## COMANDO USADO PARA ALTERAR O CAMPO DA TABELA

-- comando usado para alterar o nome de um campo(cabeçalho) da tabela
alter table contatos change nome contato varchar(50) not null;
-- Comando usado para adicionar um novo campo a tabela para o describle
alter table contatos add column obs varchar(250);
-- comando usado para adicionar um novo campo  em um lugar específico colocamo after depois do campo fone
alter table contatos add column fone2 varchar(15) after fone;
-- Comando usado para apagar um campo da tabela
alter table contatos drop column obs;
-- Comando para remover uma tabela
drop table contatos;

## COMANDO USADO PARA MODIFICAR DADOS DA TABELA

-- comando usado para modificar o tipo de dado e/ou validações do campo
alter table contatos modify column fone2 varchar(20) not null;
alter table contatos modify email varchar(100);
alter table contatos modify email varchar(100) unique;





