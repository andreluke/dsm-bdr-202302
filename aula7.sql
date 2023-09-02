create table
    tbl_fornecedor (
        cod_fornecedor serial primary key,
        nome text not null,
        status integer,
        cidade text
    );

create table
    tbl_peca (
        cod_peca serial primary key,
        nome text not null,
        cor text,
        preco numeric,
        cidade text
    );

create table
    tbl_estoque (
        cod_compra serial primary key,
        cod_fornecedor integer references tbl_fornecedor (cod_fornecedor),
        cod_peca integer references tbl_peca (cod_peca),
        quantidade integer
    );

insert into
    tbl_fornecedor (nome, status, cidade)
values
    ('A', 30, 'LONDRES'),
    ('B', 20, 'PARIS'),
    ('C', 10, 'PARIS'),
    ('D', 10, 'LONDRES');

INSERT INTO
    tbl_peca (nome, cor, preco, cidade)
values
    ('PLACA', 'AZUL', 5, 'LONDRES'),
    ('MESA', 'VERMELHA', 10, 'PARIS'),
    ('CADERNO', 'PRETA', 14, 'ROMA'),
    ('TESOURA', 'VERMELHA', 12, 'LONDRES');

INSERT INTO
    tbl_estoque (cod_fornecedor, cod_peca, quantidade)
values
    (1, 1, 30),
    (2, 1, 30),
    (3, 2, 10),
    (3, 3, 50);

