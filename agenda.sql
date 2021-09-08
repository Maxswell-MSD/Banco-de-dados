

/**
Agenda de contatos
Aluno: Maxswell Sousa Diniz
Curso: Técnico em informática - Senac Tatuapé - SP

Banco de Dados MySQL - Criação de banco de dados - tabelas e seus cadastros em CRUD

*/

-- Pesquisar bancos de dados disponíveis
show databases;

-- Criando um banco de dados
create database dbagenda;

-- Remover um banco de dados
drop database dbagenda;


-- Criando uma tabela no baco de dados
create table contatos(
id int primary key auto_increment,
nome varchar(50) not null,
fone varchar(15) not null,
email varchar(50) unique
);

-- Selecionar o banco de dados sempre que for trabalha sempre tem que iniciar
use dbagenda;

-- Verificar tabelas disponível
show tables;

-- Comando usado para descrever a tabela
describe contatos;

-- comando usado para alterar o nome de um campo(cabeçalho) da tabela

alter table contatos change nome contato varchar(50) not null;
-- Comando usado para adicionar um novo campo a tabela para o describle
alter table contatos add column obs varchar(250);

-- comando usado para adicionar um novo campo  em um lugar específico colocamo after depois do campo fone
alter table contatos add column fone2 varchar(15) after fone;

-- comando usado para modificar o tipo de dado e/ou validações do campo
alter table contatos modify column fone2 varchar(20) not null;
alter table contatos modify email varchar(100);
alter table contatos modify email varchar(100) unique;

-- Comando usado para descrever a tabela depois de  ter feito a alteraçãoo do cabeçalho alterar o nome de contato
describe contatos;
-- Comando usado para apagar um campo da tabela
alter table contatos drop column obs;

-- Comando para remover uma tabela
drop table contatos;

/*
CRUD (do inglês: Create Read Update Delete)
São as quatro operações básicas que podem ser
realizadas em banco de dados que usam o modelo
relacional.



CREATE (inserção do registro(dados) na tabela)
READ (pesquisa dos dados na(s) tabela(s))
UPDATE (alteração de algum registro da tabela)
DELETE (exclusão de um registro da tabela)



*/
-- Para guardar coisas no banco de dados, editar ou excluir
/* CRUD CREATE (Insert) */
-- campos de cadastro de banco de dados
insert into contatos (nome,fone,email) values ('Maxswell Diniz','9468-75755','emailmaxswell@contato.com');
insert into contatos (nome,fone) values ('Marcos','465872-4564','marcos@yahoo.com');
-- novo dados cadastrado dentro da regra da tabela
insert into contatos (nome,fone,email) values ('Maria das Dores','68656-4585','doresmaria@contato.com');
insert into contatos (nome,fone,email) values ('Michael', '97845-3656','michael@otlook.com');
insert into contatos (nome,fone) values ('Pedro algusto','948457-3568');
insert into contatos (nome,fone) values ('Camilla Rodriguez','78685-9474');
insert into contatos (nome,fone,email) values ('Betina Magalhães','76845-2883','betina@magalhães.com');
insert into contatos (nome,fone,email) values ('Emily Rouse','74586-2567','emily@gmail.com');
insert into contatos (nome,fone,email) values ('Sandra Tavares','946875-8697','sandra@yahoo.com');
insert into contatos (nome,fone,email) values ('Carlos zebra','895687-4689','carlos@outlook.com');



-- READ (pesquisa dos dados na(s) tabela(s))


/*CRUD READ (select)*/
-- selecionar todos os registros da tabela
select * from contatos;

-- ordem alfabética pode selecionar todas as listas em ordem alfabética (asc)
select * from contatos order by nome asc;
-- ordenar em uma ordem não alfabética para listar (desc)
select * from contatos order by nome desc;
-- Selecionar um Dado específico
select * from contatos where nome='Ana Maria';
-- fazendo a pesquisa por id
select * from contatos where id=5;
-- Selecionar campos específicos da tabela
select nome from contatos;
-- para uma pesquisa personalizadas e ordenar por ordem alfabética
select nome,fone from contatos order by nome asc;
-- filtrar nomes com a letra B 
select * from contatos where nome like 'B%';


/* crud UPDATE (update)*/
-- selecionar todos os registros da tabela
select * from contatos;

-- alterando um dado específico da tabela usando sempre o id como fonte de identificação
update contatos set fone='913266-22354' where id=3;
update contatos set email='michael@otlook.com' where id=3;

-- para mudar todos o registro de um cadastro tudo de uma vez o id não muda
update contatos set nome='michaell',fone='6666666-66666',email='novoteste@michael.com' where id=3;

/* crud DELETE (deletar)*/
select * from contatos;
-- excluindo um registo da tabela 
delete from contatos where id=3;










