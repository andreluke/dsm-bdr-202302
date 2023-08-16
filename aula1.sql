create table fregues (
idfregues integer, 
	nome varchar(30),
	cpf decimal(11), 
	rg varchar(9), 
	cidade varchar(30),
	data_de_entrada date
);

create table empresa (
idempresa integer, 
	nome decimal(8) not null,
	cnpj decimal(14) not null, 
	cep decimal(9) not null, 
	cidade varchar(30) not null,
	data_de_entrada date not null
);

create table funcionario (
idfuncionario integer, 
	nome decimal(8) not null,
	CNPJ decimal(14) not null, 
	CPF decimal(11) not null, 
	cidade varchar(30) not null,
	data_de_entrada date not null
);

create table filial (
idfilial integer, 
	franquia varchar(100) not null,
	nome varchar(50) not null, 
	CEP decimal(11) not null, 
	email varchar(30) not null,
	data_de_entrada date not null
);

create table jogos (
idjogos integer, 
	plataforma varchar(100) not null,
	nome varchar(50) not null, 
	empresa varchar(50) not null, 
	email varchar(30) not null,
	data_de_entrada date not null
);

create table cliente (
idcliente integer, 
	NOME_CLIENTE varchar(100),
	CIDADE_CLIENTE varchar(100), 
	ENDERECO_CLIENTE varchar(100)
);

create table conta (
idconta integer, 
	NUMERO_CONTA decimal(50),
	NOME_AGENCIA varchar(100), 
	SALDO real
);

create table emprestimo (
idemprestimo integer, 
	NUMERO_EMPRESTIMO decimal(50),
	NOME_AGENCIA varchar(100), 
	VALOR real
);

create table agencia (
idagencia integer, 
	NOME_AGENCIA varchar(100),
	CIDADE_AGENCIA varchar(100),
	DEPOSITOS real
);

drop table jogos, empresa, funcionario, fregues, filial;

ALTER TABLE cliente rename to tbl_cliente;
ALTER TABLE tbl_cliente add column idade decimal;
ALTER TABLE tbl_cliente add column cpf decimal(11);
ALTER TABLE conta rename to tbl_conta;
ALTER TABLE emprestimo rename to tbl_emprestimo;
ALTER TABLE agencia rename to tbl_agencia;
ALTER TABLE tbl_agencia rename column cidade_agencia to endereco_agencia;