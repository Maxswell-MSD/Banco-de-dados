

/**
Agenda de contatos
Aluno: Maxswell Sousa Diniz
Curso: Técnico em informática - Senac Tatuapé - SP
30/08/2021

Banco de Dados MySQL - Criação de banco de dados - tabelas e seus cadastros em CRUD


*/



create database carrinhobdcompra;
show databases;
create table carrinho(
id int primary key auto_increment,
produto varchar(100) not null,
quantidade int not null,
valor varchar(10.2) not null


);
use carrinhobdcompra;
show tables;
describe carrinho;

drop database carrinhobdcompra;
drop table carrinho;


-- A linha abaixo modifica o tipo de dado de um campo
-- decimal(10,2) 10 digitos com duas casas decimais
alter table carrinho modify column produto varchar(100) not null;
alter table carrinho modify column quantidade int not null;



-- Aula 4 de Banco de Dados fazendo cadastro dos valores

-- fazendo cadastro do produto 
insert into carrinho(produto,quantidade,valor) values('PCYES AMD Radeon RX 550','15',846.00);
insert into carrinho(produto,quantidade,valor) values('Galax NVIDIA GeForce GT 1030','10',799.90);
insert into carrinho(produto,quantidade,valor) values('Gainward NVIDIA GeForce GTX 1050 Ti','10',1649.00);
insert into carrinho(produto,quantidade,valor) values('AFOX AMD Radeon R5 230 ','15',317.42);
insert into carrinho(produto,quantidade,valor) values('Asrock Phantom Gaming D Radeon RX570','10',1499.90);
insert into carrinho(produto,quantidade,valor) values('MSI NVIDIA GeForce GTX 1660 Super Ventus XS OC','5',3999.90);
insert into carrinho(produto,quantidade,valor) values('XFX AMD Radeon RX 5600 XT THICC III Ultra','7',1799.00);
insert into carrinho(produto,quantidade,valor) values('ZOTAC Gaming GeForce RTX 2060 ','8',3999.90);
insert into carrinho(produto,quantidade,valor) values('Sapphire PULSE AMD Radeon RX 6800 XT GAMING OC','5',8499.00);
insert into carrinho(produto,quantidade,valor) values('EVGA GeForce RTX 3080 Ti FTW3 ULTRA GAMING LHR ','4',11499.90);


/*CRUD READ (select)*/
-- selecionar todos os registros da tabela
select * from carrinho; 	

-- ordem alfabética pode selecionar todas as listas em ordem alfabética (asc)
select * from carrinho order by produto asc;

-- Operações matemáticas para ver o total geral dos produtos

select sum(valor*quantidade) as total from carrinho;


/* crud UPDATE (update de quantidade)*/
-- selecionar todos os registros da tabela
select * from carrinho;

/*CRUD UPDATE (update) */
-- alterando quantidade do produto do id 1 PCYES AMD Radeon RX 550 de 15 para 10
update carrinho set quantidade='10' where id=1;
-- alterando quantidade do produto do id 7 XFX AMD Radeon RX 5600 XT THICC III Ultra de 7 para 16
update carrinho set quantidade='16' where id=7;

/*CRUD DELETE (deletar) */
-- o produto escolhido para ser deletado é a placa de vídeo AFOX AMD Radeon R5 230 DO id=4
select * from carrinho;
-- CRUD DELETE
delete from carrinho where id=4;


























