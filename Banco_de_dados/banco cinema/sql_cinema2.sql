create database Cinema_tbl;

use Cinema_tbl;

create table Usuario_tb(
id_user int(11) primary key not null auto_increment,
email varchar(60) not null,
senha varchar(20) not null,
nome_user varchar(30) not null
);


select * from Usuario_tb;

create table Diretor_tb (
id_diretor int(11) primary key not null auto_increment,
nome_diretor varchar(45),
nacionalidade varchar(45),
nascimento date,
sexo varchar(1) not null
);


insert into Diretor_tb (nome_diretor, nacionalidade, nascimento, sexo)
value ("Steven Spielberg", "Estados Unidos", "1946-12-18", "M");

insert into Diretor_tb (nome_diretor, nacionalidade, nascimento, sexo)
values ("James Cameron", "Canadá", "1954-08-16", "M"),
("José Padilha", "Brasil", "1967-08-16", "M"),
("George Lucas", "Estados Unidos", "1944-05-14", "M"),
("Alan Rickman", "Inglaterra", "1946-02-21", "M"),
("Fernado Meirelles", "Brasil", "1965-11-09", "M");



create table Genero_tb (
id_genero int(11) primary key not null auto_increment,
genero varchar(45)
);


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
nome_filme varchar(45),
Ano_lancamento int(4),
duracao int(3),
FK_id_genero int not null,
FK_id_diretor int not null,
CONSTRAINT FK_id_genero FOREIGN KEY (FK_id_genero) REFERENCES Genero_tb (id_genero),
CONSTRAINT FK_id_diretor FOREIGN KEY (FK_id_diretor) REFERENCES diretor_tb (id_diretor)
);


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

select nome_filme, Ano_lancamento, duracao from Filme_tb where duracao < 170 and Ano_lancamento between 2000 and 2015;

#Select sum(duracao) from Filme_tb;
Select sum(duracao) tempo_de_maratona from Filme_tb;

select count(nome_ator) total_atores from Ator_tb; -- exemplo de como consultar de forma unica

select count(nome_diretor) total_diretores from Diretor_tb where nacionalidade='Brasil';

select count(nome_filme) from Filme_tb where FK_id_genero = 2 and ano_lancamento < 2000;


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
("Jim Carrey", "M", "1962-01-17"),
("Scarlett Johansson", "F", "1984-11-22"),
("Megan Fox", "F", "1986-05-16"),
("Ben Stiller", "M", "1965-11-30"),
("Emma Stone", "F", "1988-11-06"),
("Elizabeth Olsen", "F", "1989-02-16")
;


create table Filme_e_ator (
fk_id_filme int(11),
fk_id_ator int(11),
primary key (fk_id_filme, fk_id_ator),
CONSTRAINT FK_id_filme FOREIGN KEY (FK_id_filme) REFERENCES Filme_tb (id_filme),
CONSTRAINT FK_id_ator FOREIGN KEY (FK_id_ator) REFERENCES ator_tb (id_ator)
);


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

-- Mostra quantos diretores na tabela nasceram nos EUA e nasceram depois de 1945
select nome_diretor, nacionalidade, nascimento, sexo from Diretor_tb where sexo='M'
and nacionalidade="Estados Unidos" and year(nascimento) >1945;

-- Mostra qual o filme com a menor duração
select min(duracao) from Filme_tb;

 -- Nome com menor quantidade de letras
select min(nome_ator) from Ator_tb;

-- Soma do tempos de duração de todos os filmes para ver o tempo de maratona
select sum(duracao) tempo_de_maratona, avg(duracao) media_maratona_2000
from Filme_tb where ano_lancamento > 2000;

-- Tempo médio de duração da maratona de filmes	
select avg(duracao) media_da_maratona from Filme_tb;

-- Média de tempo dos filmes dos anos 2000 até o mais recente
select avg(duracao) media_da_maratona_2000 from Filme_tb where ano_lancamento >2000;

-- Exibe a nascionalidade de cada diretor
select (nacionalidade) paises from Diretor_tb group by nacionalidade; 

-- Exibe a quantidade de diretores e a sua nacionalidade
select count(nacionalidade) Quant_diretores, 
nacionalidade from Diretor_tb group by nacionalidade;

-- Mostra quantos homens e mulheres há no banco
select count(sexo) M_e_F,
sexo from Ator_tb group by sexo;

-- Mostra quantos atores nasceram antes de 1980
select count(sexo) total, nascimento from Ator_tb where nascimento <="01-01-1980";

-- Mostra todos os diretores usando o "coringa" (sinal de porcentagem)
Select * from Diretor_tb where nome_diretor like "%%"; 

-- Limit a partir do 3 dado e mostrará mais 7 dados.
select * from Ator_tb limit 3,7;

-- Mostrar a nacionalidade dos diretores  
select * from Diretor_tb where nacionalidade ='Brasil' or nacionalidade='Estado Unidos' or nacionalidade='Inglaterra';
select * from Diretor_tb where nacionalidade in ('Brasil', 'Inglaterra', 'Estado Unidos');

-- Mostrar somente as nascionalidades presentes na tabela diretor
select nacionalidade from Diretor_tb group by nacionalidade;  
select distinct (nacionalidade) from Diretor_tb; 

-- Filtro de pesquisa
select * from Diretor_tb where nacionalidade = "Canadá";
select * from Diretor_tb having nacionalidade = "Canadá";

-- 
select nacionalidade, count(*) total from Diretor_tb group by nacionalidade;
select nacionalidade, count(*) total from Diretor_tb group by nacionalidade having total >= 2;


select FK_id_genero, count(*)  total, duracao from Filme_tb where duracao < 150 group by FK_id_genero having total >4;

-- Mostra a hora
select curdate();
-- Mostra data e hora
select now() + interval 25 month;

insert Diretor_tb (nome_diretor, nacionalidade, nascimento, sexo) 
values ("Thomas Rick", "Dinamarca", (select curdate() + interval 9 month), "M"); #Curdate foi usado nesse caso pois o campo de data é sommente DATE e não DATE TIME
select * from Diretor_tb;
select second(now());


-- SUB-QUERY 
select (select now() + interval 2 day) + interval 1 month;

-- JOIN
select Filme_tb.nome_filme,  Genero_tb.genero from Filme_tb inner join Genero_tb on Filme_tb.FK_id_genero = Genero_tb.id_genero; 

select nome_filme, duracao from Filme_tb where duracao = (select max(duracao) from Filme_tb);


select * from Ator_tb where month(nascimento) = 06;
select * from Ator_tb where day(nascimento) = 23;


								-- Exercicios
					
#1) Selecionar todos os atores que comecem com a letra "A" 
select * from Ator_tb where nome_ator like 'A%';

#2) Selecionar a maior duracao dos filmes cadastrados. 
select max(duracao) Maior_duracao from Filme_tb;

#3) Selecionar a menor duracao dos filmes lancado entre os anos 2000 e 2010. 
select min(duracao) Menor_duracao from Filme_tb where ano_lancamento between 2000 and 2010;

#4) Selecionar os filmes exibibindo apenas aqueles que pertencerem ao genero "Ação".
select nome_filme from Filme_tb where FK_id_genero = '2';

#5) Selecionar os filmes exibindo aqueles que pertecerem ao genero "Drama" e que tenham sido lançados apos o ano 2010.
select nome_filme from Filme_tb where FK_id_genero = '4' and ano_lancamento > 2010;

#6) Exibir todos os filmes e seus anos de lancamentos organizando da seguinte maneira (ordem de ano do mais novo para
# o mais velho e nome do filme em ordem alfabetica).
select * from Filme_tb order by ano_lancamento desc, nome_filme;

#7) Exibir a soma da duracao de todos os filmes que foram lancados entre 2010 e 2018 e pertecerem ao genero "ficçao"
select sum(duracao) from Filme_tb where ano_lancamento between 2010 and 2018 and FK_id_genero = '6';

#8) Exibir quantos filmes foram lancados antes do ano 2000.
select count(nome_filme) from Filme_tb where ano_lancamento < 2000; 

#9) Exibir qual a media de duracao dos filmes lancados apos o ano 2000.
select avg(duracao) from Filme_tb where ano_lancamento > 2000;

#10) Quantos filmes pertecem a cada um dos generos
select count(FK_id_genero) todos_generos, FK_id_genero from Filme_tb group by FK_id_genero;

#11) Exibir em ordem alfabetica quais atores e em quais anos nasceram entre 1960 e 1980.
select nome_ator, nascimento from Ator_tb where nascimento between '1960-01-01' and '1980-01-01' group by nome_ator;

#12) Exibir todas informações sobre os atores do mais jovem para o mais velho.
select * from Ator_tb group by nascimento desc;

#13) Selecionar quantos filmes foram lancados em cada um dos anos.
select count(ano_lancamento) total_filmes, ano_lancamento from Filme_tb group by ano_lancamento;

#14) Exibir quantos diretores pertencem a cada pais. 
select count(nacionalidade) quant_diretores, nacionalidade from Diretor_tb group by nacionalidade;

#15) exibir o total de filmes, a soma das durações e a media das duracoes para cada um 
# dos generos de filmes organizando da menor media para a maior.
select count(nome_filme) quant_filmes,count(duracao) quant_duracao, avg(duracao) media_duracao, 
FK_id_genero from Filme_tb group by FK_id_genero;

#16) Selecionar todos os filmes que contenham a silaba "DE" no nome e em ordem alfabetica de Z-A.
select * from Filme_tb where nome_filme like "%de%" group by nome_filme desc;