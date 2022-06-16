create database Bd_ETEC;
use Bd_ETEC;

create table ETEC(
CNPJ char(19) primary key,
nome varchar(45)
);

create table professores (
RM int primary key,
coordenador TINYINT not null,
nome varchar(45),
CPF char(15) not null,
RG char(10) not null,
endereco varchar(45) not null,
telefone varchar(15)
);

create table disciplinas(
idDisciplina int primary key,
curso varchar(45) not null
);

create table agendamentos(
idAgendamentos integer primary key,
periodo varchar(20) not null,
data_uso date not null,
aprova_agendamento varchar(45),
descricao varchar (45) not null
);

create table laboratorio(
idLaboratorio int primary key,
nome_lab varchar (45) not null,
tipo_lab varchar (45) not null
);

create table patrimonios(
cod_patrimonio int,
num_serie varchar(45) not null,
marca varchar(45) not null,
modelo varchar(45) not null,
cor varchar(20) not null,
descricao varchar(45)
);

create table estoque(
entrada varchar(45) not null,
retirada varchar(45)
);

create view vw_quantidade as 
select entrada, retirada from estoque; 

create table almoxarifado(
idAlmoxarifado int primary key not null,
nome varchar(45) not null,
CPF char(15) not null
);

create table manutencao(
idManutencao int primary key,
data_manutencao date not null,
descricao varchar(45)
);

create table corpo_docente(
RM int primary key,
Nome varchar(45) not null,
CPF char(15) not null,
telefone varchar(15) not null
);

create table armarios(
idArmarios int primary key,
numeracao varchar(15) not null,
data_inicio date not null,
devolucao date not null,
valor_aluguel varchar(45) not null
);

create table alunos(
RM int primary key not null,
Nome varchar(45) not null,
CPF char (15) not null,
Endereco varchar(45) not null,
telefone char(15)
);

#adicionar nova coluna para a tabela
use bd_etec;
select * from alunos; 
alter table alunos add column Sexo varchar(10) after Nome;

create table agendamento_quadra(
IdQuadra int primary key,
Hora_inicial time not null,
data_solic date not null,
hora_final time
);
