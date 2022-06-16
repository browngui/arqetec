#Criar banco
create database bd_Academia;

##Acesso ao banco
use bd_Academia;

#Criar tabela alunos
create table academia(
	cnpj char(19) primary key,
    nome varchar(45) not null,
    endereço varchar(45) not null,
    telefone varchar (15) not null
);

##Inserir dados na tabela academia // ##No insert coloque os valores em aspas para dar certo
##CRUD - CREAT - READ - UPDATE - DELETE

##Inserir dados na tabela academia -> CREATE
insert into academia (cnpj, nome, endereço, telefone) 
values ('60.448.040.0001-22', 'Acad do Gui', 'Av. Augusta', '(11) 94845-1572');

##Consultar dados na tabela academia -> READ
select * from academia;
select nome from academia; 

##ATUALIZAR DADOS DA ACADEMIA -> UPDATE
update academia set nome = 'Academia do Guizão';

##DELETAR DADOS DA TABELA ACADEMIA -> DELETE
delete from academia;

##Criar tabala alunos
create table alunos(
	matricula integer auto_increment primary key,
    nome varchar(45) not null,
    endereço varchar(45) not null,
    telefone varchar(15) not null,
    CPF char(11) not null
);

##Inserir dados na tabela academia // ##No insert coloque os valores em aspas para dar certo
##CRUD - CREAT - READ - UPDATE - DELETE
insert into alunos(nome, endereço, telefone, CPF)
values ('Zezinho','Rua Antares','(11) 4856-9648','48595482698');
##Para fazer consulta use a classe WHERE
##Para consultar por nome, use a classe LIKE. FUNCIONA SOMENTE PARA CAMPOS CHAR E VARCHAR
##pesquisar por dia, mes ou ano, usa-se WHERE + DAY , WHERE + MONTH e WHERE + YEAR.
##Procurar mais de um elemento usa a classe  SELECT * FROM --- WHERE CPF IN (1, 2, 3);
##Em casos de string (txt) usa ASPAS para pesquisar. 
##TRUNCATE exclui os dados da tabela e os AUTO INCREMETE, podendo iniciar tudo novamente


select * from alunos;

##Criar tabela turma
create table turma(
	cod_turma integer auto_increment primary key,
    qtde_alunos integer default 0,
    horario time, 
    duracao integer default 0,
    dt_inicial date,
    dt_final date,
    tipo_atividade varchar(20) default ''
    
    ##Inserir dados na tabela academia // ##No insert coloque os valores em aspas para dar certo
	##CRUD - CREAT - READ - UPDATE - DELETE
); 

