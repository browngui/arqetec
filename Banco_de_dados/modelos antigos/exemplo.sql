create database exemplos;

use exemplos;

create table Alunos(
id_aluno int primary key auto_increment,
nome varchar(45) not null,
cpf varchar(14) not null unique,
rm int not null unique,
sexo enum('feminino', 'masculino') not null
);

insert into Alunos(nome, cpf, rm, sexo)
values ("Armando", "123.897.964-78", "4561", "masculino"),
('Alana', '465.684.684-98', '4562', 'feminino');

#se a trava de segurança estiver desabilitada, e executar o comando abaixo, todos os nomes
#serão alterados.
#Para rverter é deixar desabilitado o auto commit desativado e usar o comando >>rollback<<
#update em tabelass

select * from Alunos;
update Alunos SET nome = 'Carlinhos' where id_aluno =1;
#para atualizar mais de um campo:
#update Alunos SET nome="fulano", cpf="...",sexo="masculino" where id_aluno=4 (nessa opção, coloque o numero subsequente).

#para excluir dados direto da tabela, ex:
#delete from alunos where id_alunos=3;
#se executar sem o WHERE, vai apagar todos os dados da tabela


#DDL - Data Definition language
#Create, ALter e Drop

#DML - Data Manipulation language
#Insert, Update e Delete

#DTL - Data Transition language 
#Commit e rollback
#Commit salva até a parte q foi feita e o roolback possibilita voltar no ponto