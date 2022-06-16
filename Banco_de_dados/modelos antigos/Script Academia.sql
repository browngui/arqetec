#Criação do banco de dados
Create database bd_academia;

#Acesso ao banco
USE bd_academia;

#Criar tabela alunos
create table academia(
	cnpj char(19) primary key,
    nome varchar(45) not null,
    endereço varchar(45) not null,
    telefone varchar (15) not null
);

##Inserir dados na tabela academia -> CREATE
insert into academia (cnpj, nome, endereço, telefone) 
values ('60.448.040.0001-22', 'Acad do Gui', 'Av. Augusta', '(11) 94845-1572');

##Consultar dados na tabela academia -> READ
select * from academia;
select nome from academia; 

##Criar tabala alunos
create table alunos(
	matricula integer auto_increment primary key,
    nome varchar(45) not null,
    endereço varchar(45) not null,
    telefone varchar(15) not null,
    CPF char(11) not null
);

insert into alunos(nome, endereço, telefone, CPF)
values ('Zezinho','Rua Antares','(11) 4856-9648','48595482698');

##Pequeno exemplo de massa de dados usando o site https://generatedata.com/

INSERT INTO alunos (nome, Endereço, Telefone,CPF)
VALUES
  ("Brenda Costa","900-6137 Tempus Rd.","(06) 9589 2473","02119754682"),
  ("Caesar Pires","Ap #455-2002 Eu Av.","(07) 2025 3565","05463609874"),
  ("Zorita Barboza","P.O. Box 463, 5257 Dui St.","(05) 4362 5962","00571795570"),
  ("Colorado Aparecido","P.O. Box 570, 5600 Enim St.","(07) 5452 1717","02334948124"),
  ("Anjolie Camargo","Ap #261-1894 Varius Av.","(05) 8197 5613","00573727542"),
  ("Skyler de Barros","Ap #965-1062 Donec Avenue","(07) 5760 2773","01204185421"),
  ("Rajah Das Gracas","4175 A, Street","(01) 6343 0377","01652213647"),
  ("Illiana Macedo","220-7492 Vel, Ave","(08) 9178 0213","00228130086"),
  ("Sybill Borges","Ap #822-8837 Pede Rd.","(08) 3321 7041","01746961323"),
  ("Benedict de Melo","Ap #752-2438 Bibendum. Avenue","(05) 3141 7930","04225790119");
  INSERT INTO alunos (nome, Endereço, telefone ,CPF)
VALUES
  ("Vance Dutra","Ap #648-5435 In Rd.","(03) 4704 5263","01930393264"),
  ("Ahmed Menezes","Ap #912-1372 Quisque Avenue","(08) 6019 6288","00214066741"),
  ("Valentine de Assis","Ap #376-9980 Massa. Avenue","(01) 3175 5385","03012611211"),
  ("Iris Custodio","Ap #572-6953 Nec Ave","(02) 7822 2922","00522984144"),
  ("Octavius Torres","3716 Nam St.","(05) 6157 8745","00807869840"),
  ("Keefe de Morais","439-4403 Sed St.","(02) 5413 3663","00077040966"),
  ("Tanisha do Nascimento","6271 Aliquam Avenue","(03) 5342 9936","00762666919"),
  ("Kylie Correa","P.O. Box 175, 5480 Lorem, Rd.","(01) 6957 1233","00049034226"),
  ("Vernon Bastos","P.O. Box 312, 9921 Mattis Rd.","(03) 7173 4148","00280488144"),
  ("Jeanette Abreu","Ap #321-3537 Lacinia Street","(06) 3985 8542","00374708629");
INSERT INTO alunos (nome, Endereço, telefone ,CPF)
VALUES
  ("Merrill Barreto","Ap #975-1874 Phasellus Rd.","(04) 1644 8622","00724220763"),
  ("Erich Faria","844 Accumsan Av.","(04) 3567 3442","00251270776"),
  ("Lyle Muniz","198-1311 Enim Av.","(03) 0616 6451","01100548248"),
  ("Gemma Das Dores","P.O. Box 874, 4039 Dictum Rd.","(03) 6957 5835","02199164626"),
  ("Hedda Aparecido","Ap #674-4669 Pellentesque St.","(01) 5362 3462","02163576810"),
  ("Wade Lima","971-4647 Adipiscing. Rd.","(05) 3711 3383","00476474985"),
  ("Flynn Muniz","984-3638 Erat St.","(04) 5846 4874","05653481627"),
  ("Vanna Teles","316-7348 Vitae, Rd.","(09) 3147 8463","03271292312"),
  ("Simon Ramos","Ap #457-1739 Tempus Av.","(06) 5323 8795","01893197034"),
  ("Debra Moreira","Ap #315-122 Donec Rd.","(06) 3026 1292","01591302187");

create table turma(
	cod_turma integer auto_increment primary key,
    qtde_alunos integer default 0,
    horario time, 
    duracao integer default 0,
    dt_inicial date,
    dt_final date,
    tipo_atividade varchar(20) default ''
);