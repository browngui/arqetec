create database Cinema_tbl;

use Cinema_tbl;


create table Diretor_tb (
id_diretor int(11) primary key not null auto_increment,
nome_diretor varchar(45),
nacionalidade varchar(45),
nascimento date,
sexo varchar(1)
);
alter table Diretor_tb modify sexo varchar(1) not null;

insert into Diretor_tb (nome_diretor, nacionalidade, nascimento, sexo)
value ("Steven Spielberg", "Estados Unidos", "1946-12-18", "M");

insert into Diretor_tb (nome_diretor, nacionalidade, nascimento, sexo)
values ("James Cameron", "Canadá", "1954-08-16", "M"),
("José Padilha", "Brasil", "1967-08-16", "M"),
("George Lucas", "Estados Unidos", "1944-05-14", "M"),
("Alan Rickman", "Inglaterra", "1946-02-21", "M"),
("Fernado Meirelles", "Brasil", "1965-11-09", "M");


select * from Diretor_tb;


create table Genero_tb (
id_genero int(11) primary key not null auto_increment,
genero varchar(45)
);
alter table Genero_tb modify id_genero int(11) auto_increment;

insert into Genero_tb (genero)
value ("Terror");

insert into Genero_tb (genero)
values
("Ação"),
("Comédia"),
("Drama"),
("Suspense"),
("Ficção"),
("Romance"),
("Animação")
;

select * from Genero_tb;

create table Filme_tb (
id_filme int(11) primary key not null auto_increment,
nome_filme_PT varchar(45),
Ano_lancamento int(4),
durancao int(3),
FK_id_genero int not null,
FK_id_diretor int not null,
CONSTRAINT FK_id_genero FOREIGN KEY (FK_id_genero) REFERENCES Genero_tb (id_genero),
CONSTRAINT FK_id_diretor FOREIGN KEY (FK_id_diretor) REFERENCES diretor_tb (id_diretor)
);
alter table Filme_tb change nome_filme_PT nome_filme varchar(45);
alter table Filme_tb change durancao duracao varchar(45);

insert into Filme_tb (nome_filme, Ano_lancamento, duracao, FK_id_genero, FK_id_diretor) 
value ("Viva: A Vida é Uma Festa", "2017", "105", "8", "5");

insert into Filme_tb (nome_filme, Ano_lancamento, duracao, FK_id_genero, FK_id_diretor) 
values("Logan", "2017","137", "2", "1"),
("Um Sonho de Liberdade", "1995", "142", "4", "5"),
("Matrix", "1999", "150", "6", "1"),
("Jumanji", "1996", "104", "3", "6"),
("Cidade de Deus", "2002", "135", "2", "3"),
("O Resgate do Soldado Ryan", "1998", "170", "2", "6"),
("Extraordinário", "2017", "113", "4", "5"),
("O Poderoso Chefão", "1972", "178", "2", "2"),
("Forrest Gump", "1994", "142", "7", "1"),
("Truque de Mestre", "2013", "125", "2", "4"),
("Fragmentado", "2017", "117", "4", "6"),
("Avatar", "2009", "162", "6", "2"),
("O Preço do Amanhã", "2011", "109", "2", "3"),
("O Senhor dos Anéis: O Retorno do Rei", "2003", "200", "6", "5"),
("Toy Story", "1995", "141", "8", "2"),
("Star Wars: Os Últimos Jedi", "2017", "152", "6", "4"),
("O Menino do Pijama Listrado", "2008", "94", "4", "1"),
("O Lobo de Wall Street", "2013", "181", "4", "6"),
("A Hora do Rush", "1998", "98", "3", "5"),
("Piratas do Caribe - Maldição do Perola Negra", "2003", "143", "2", "4"),
("Passengeiros", "2016", "116", "2", "1"),
("Beleza Oculta", "2016", "97", "4", "2"),
("It - A Coisa", "2017", "134", "1", "3"),
("Rocky V", "1990", "111", "4", "4"),
("Titanic", "1997", "195", "7", "4"),
("Vingadores 4", "2019", "150", "2", "2"),
("Velozes e Furiosos 8", "2017", "136", "2", "6"),
("Transformers", "2007", "150", "2", "4"),
("Ilha do Medo", "2010", "139", "5", "1")
;



create table Ator_tb(
id_ator int(11) primary key not null auto_increment,
nome_ator varchar(45),
sexo varchar (1),
nascimento date
);

select * from Ator_tb;
insert into Ator_tb (nome_ator, sexo, nascimento)
value ("Andrew Garfield", "M", "1983-08-20");

insert into Ator_tb (nome_ator, sexo, nascimento)
values ("Sandra Bullock", "F", "1964-06-26"),
("Will Smith", "M", "1968-09-25"),
("Harrison Ford", "M", "1942-07-13"),
("Hugh Jackman", "M", "1968-10-12"),
("Angelina Jolie", "F", "1975-06-04"),
("Keanu Reeves", "M", "1964-09-02"),
("Jennifer Lawrence","F", "1990-08-15"),
("Sylvester Stallone", "M", "1946-07-06"),
("James Mcavoy", "M", "1979-04-21"),
("Brad Pitt", "M", "1963-12-18"),
("Leonardo Dicaprio", "M", "1974-11-11"),
("Vin Diesel", "M", "1967-07-18"),
("Johnny Depp", "M", "1963-06-09"),
("Robin Williams", "M", "1951-07-21"),
("Robert Downey Jr.", "M", "1965-04-04"),
("Patrick Stewart","M", "1940-07-13"),
("Sandra Bullock", "F", "1964-06-26"),
("Jackie Chan", "M", "1954-04-07"),
("Jennifer Aniston","F", "1969-02-11"),
("Jim Carrey", "F", "1962-01-17"),
("Scarlett Johansson", "F", "1984-11-22"),
("Megan Fox", "F", "1986-05-16"),
("Ben Stiller", "F", "1965-11-30"),
("Emma Stone", "F", "1988-11-06")
;

update Ator_tb set sexo="M" where id_ator =21;
update Ator_tb set nome_ator= "Elizabeth Olsen", sexo="F" where id_ator =18;
update Ator_tb set nascimento = '1989-02-16' where id_ator = 18;


create table FilmeHasAtor_tb (
fk_id_filme int(11),
fk_id_ator int(11),
primary key (fk_id_filme, fk_id_ator),
CONSTRAINT FK_id_filme FOREIGN KEY (FK_id_filme) REFERENCES Filme_tb (id_filme),
CONSTRAINT FK_id_ator FOREIGN KEY (FK_id_ator) REFERENCES ator_tb (id_ator)
);
alter table FilmeHasAtor_tb rename Filme_e_Ator;



create table Horario_tb(
id_horario int(11) primary key not null auto_increment,
horario time
);

create table Exibicao_tb (
id_exibicao int(11) primary key not null auto_increment,
data_exibicao date
);

create table Sala_tb (
id_sala int(11) primary key not null auto_increment,
capacidade int(11)
);







#desc e;



#alter table nome da tabela e DROP table pra excluir
#ADD column adicionar uma coluna
#modify moficar o conteudo da coluna
#change mudar o tipo de dado
#rename para mudar nome da tabela