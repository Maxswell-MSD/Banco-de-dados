

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
create table nomeTabela( <br>
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
describe nomeTabela; <br>
-- Comando usado para apagar um campo da tabela <br>
alter table nomeTabela drop column nomecoluna; <br>
-- Comando para remover uma tabela <br>
drop table nomeTabela; <br>

## Criando tabela, modificando sua ordem e apagando tabelas .

-- comando usado para alterar o nome de um campo(cabeçalho) da tabela <br>
alter table nomeTabela change nomecoluna nomeTabela varchar(50) not null; <br>
-- Comando usado para adicionar um novo campo a tabela para o describle  <br>
alter table nomeTabela add column nomecoluna varchar(250); <br>
-- comando usado para adicionar um novo campo  em um lugar específico colocando after <br>
alter table nomeTabela add column nomecoluna2 varchar(15) after nomecoluna1; <br>
-- Comando usado para apagar um campo da tabela <br>
alter table nomeTabela drop column nomecoluna; <br>
-- Comando para remover uma tabela <br>
drop table nomeTabela; <br>

## Configuração de modificação de dados raiz das tabelas

-- comando usado para modificar o tipo de dado e/ou validações do campo <br>
alter table nomeTabela modify column nomecoluna2 varchar(20) not null; <br>
alter table nomeTabela modify nomecoluna1 varchar(100); <br>
alter table nomeTabela modify nomecoluna3 varchar(100) unique; <br>

## CRUD ( CREATE ) Criando registro de dados para a tabela

-- campos de cadastro de banco de dados usaremos sempre o CREATE <br>
insert into nomeTabela(nomecoluna1,nomecoluna2,nomecoluna3) values ('dadoscoluna1','dadoscoluna2','dadoscoluna3'); <br>
-- selecionar todos os registros da tabela <br>
select * from nomeTabela; <br>

## CRUD (READ) para listar e classificar todos os dados <br>

-- selecionar todos os registros da tabela <br>
select * from nomeTabela;<br>

-- ordem alfabética pode selecionar todas as listas em ordem alfabética (asc)<br>
select * from nomeTabela order by nomecoluna asc;<br>
-- ordenar em uma ordem não alfabética para listar (desc)<br>
select * from nomeTabela order by nomecoluna desc;<br>
-- Selecionar um Dado específico<br>
select * from nomeTabela where nomecoluna='registro da coluna';<br>
-- fazendo a pesquisa por id<br>
select * from nomeTabela where id=5;<br>
-- Selecionar campos específicos da tabela<br>
select nomecoluna from nomeTabela;<br>
-- para uma pesquisa personalizadas e ordenar por ordem alfabética<br>
select nomecoluna,nomecoluna e from nomeTabela order by nome asc;<br>
-- filtrar nomecoluna com a letra B <br>
select * from nomeTabela where nomeTabelalike 'B%';<br>

## CRUD (UPDATE) Para atualizar um dado específico ou por completo <br>

-- selecionar todos os registros da tabela <br>
select * from nomeTabela; <br>

-- alterando um dado específico da tabela usando sempre o id como fonte de identificação <br>
update contatos set nomecoluna1='modifique_aqui1' where id=3; <br>
update contatos set nomecoluna1='modifique_aqui2' where id=3; <br>

-- para mudar todos o registro de um cadastro tudo de uma vez o id não muda <br>
update nomeTabela set nomeColuna1='registro1',nomeColuna2='registro2',nomeColuna3='registro3' where id=3; <br>

## CRUD (DELETE) <br>

select * from nomeTabela; <br>
-- excluindo um registo da tabela usando o id específico  <br>
delete from nomeTabela where id=3; <br>










