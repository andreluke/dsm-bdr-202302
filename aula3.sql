
create database bd_aula03;
create table tbl_cliente(
	codigo_cliente integer primary key,
	Nome varchar(100) not null,
	Cidade varchar(100),
	Endereco varchar(100)
);
create table tbl_emprestimo(
	numero_emprestimo integer primary key,
	codigo_cliente decimal(20),
	codigo_livro decimal(20)
);

create table tbl_titulo(
	codigo_titulo integer primary key,
	titulo varchar(100) not null,
	descricao varchar(200),
	categoria varchar(100)
);

create table tbl_livros(
	cod_livro integer primary key,
	codigo_titulo decimal(20),
	status varchar(100)
);

drop table tbl_cliente, tbl_emprestimo, tbl_titulo, tbl_livros;

CREATE DOMAIN chk_categoria text CHECK (value='DRAMA' OR value='COMEDIA');
CREATE DOMAIN chk_status text CHECK (value='DISPONIVEL' OR value='INDISPONIVEL');

create table tbl_cliente(
	codigo_cliente integer primary key,
	Nome varchar(100) not null,
	Cidade varchar(100),
	Endereco varchar(100)
);

create table tbl_titulo(
	codigo_titulo integer primary key,
	titulo varchar(100) not null,
	descricao varchar(200),
	categoria chk_categoria
);

create table tbl_livros(
	cod_livro integer primary key,
	codigo_titulo integer REFERENCES tbl_titulo(codigo_titulo),
	status chk_status
);

create table tbl_emprestimo(
	numero_emprestimo integer primary key,
	codigo_cliente integer REFERENCES tbl_cliente(codigo_cliente),
	codigo_livro integer REFERENCES tbl_liVros(cod_livro)
);

