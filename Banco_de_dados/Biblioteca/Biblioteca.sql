CREATE DATABASE Biblioteca_tbl;

use Biblioteca_tbl;

CREATE TABLE Bibliotecario_tb (
  cod_bibliotecario INT(11) NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NOT NULL,
  nasc DATE NOT NULL,
  telefone VARCHAR(45) NOT NULL,
  fk_biblio_responsavel INT(11) NULL,
  PRIMARY KEY (cod_bibliotecario)
);
 

CREATE TABLE Editora_tb (
  cod_editora INT(11) NOT NULL AUTO_INCREMENT,
  nome_editora VARCHAR(100) NOT NULL,
  CNPJ VARCHAR(19) NOT NULL,
  email VARCHAR(100) NOT NULL,
  PRIMARY KEY (cod_editora)
);


CREATE TABLE Categoria_tb (
  cod_categoria INT(11) NOT NULL AUTO_INCREMENT,
  nome_categoria VARCHAR(45) NOT NULL,
  PRIMARY KEY (cod_categoria)
);

CREATE TABLE Cliente_tb(
  cod_cliente INT(11) NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NOT NULL,
  CPF VARCHAR(15) NOT NULL,
  nasc DATE NOT NULL,
  email VARCHAR(45) NOT NULL,
  PRIMARY KEY (cod_cliente)
);

CREATE TABLE Emprestimo_tb (
  cod_emprestimo INT(11) NOT NULL AUTO_INCREMENT,
  retirada TIMESTAMP NOT NULL,
  devolucao TIMESTAMP NOT NULL,
  fk_cliente INT(11) NOT NULL,
  fk_bibliotecario INT(11) NOT NULL,
  PRIMARY KEY (cod_emprestimo)
);

CREATE TABLE Livros_tb(
  cod_livro INT(11) NOT NULL,
  nome_livro VARCHAR(45) NOT NULL,
  data_publicacao DATE NOT NULL,
  paginas INT(11) NOT NULL,
  valor_unitario DECIMAL(6,2) NOT NULL,
  fk_categoria INT(11) NOT NULL,
  fk_editora INT(11) NOT NULL,
  PRIMARY KEY (cod_livro)
);

CREATE TABLE Autor_tb (
  autor_tb INT(11) NOT NULL,
  nome VARCHAR(45) NOT NULL,
  nasc DATE NOT NULL,
  nacionalidade VARCHAR(45) NOT NULL,
  PRIMARY KEY (autor_tb)
);

CREATE TABLE Autor_Livro (
  fk_autor INT(11) NULL,
  fk_livro INT(11) NULL)
;

CREATE TABLE livro_emprestimo (
  fk_livro INT(11) NULL,
  fk_emprestimo INT(11) NULL)
;

