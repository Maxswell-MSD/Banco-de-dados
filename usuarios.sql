

/**
Agenda de contatos
Aluno: Maxswell Sousa Diniz
Curso: Técnico em informática - Senac Tatuapé - SP

Atividade Projeto Banco de dados usários - iniciado em 1/09/2021

*/

-- Pesquisar bancos de dados disponíveis
show databases;

-- Criando um banco de dados
create database dbinfox;

-- Remover um banco de dados
drop database dbinfox;


-- Criando uma tabela no baco de dados
create table usuarios(
id int primary key auto_increment,
usuario varchar(50) not null,
login varchar(10) not null,
senha varchar(10) not null
);

-- Selecionar o banco de dados sempre que for trabalha sempre tem que iniciar
use dbinfox;

-- Verificar tabelas disponível
show tables;

-- Comando usado para descrever a tabela
describe usuarios;

-- preenchimento único
alter table usuarios modify login varchar(10) unique not null;
-- preenchimento não obrigatório
alter table usuarios modify senha varchar(10); 



-- Comando usado para apagar um campo da tabela
alter table usuarios drop column obs;

-- Comando para remover uma tabela
drop table usuarios;






