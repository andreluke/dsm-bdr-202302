select a.titulo, b.status from tbl_titulo a inner join tbl_livros b ON a.codigo_titulo = b.codigo_titulo;

select a.titulo, b.status, a.descricao from tbl_titulo a inner join tbl_livros b ON a.codigo_titulo = b.codigo_titulo
where status='ALUGADO';

select a.nome, c.status from tbl_cliente a inner join tbl_emprestimo b ON a.codigo_cliente = b.codigo_cliente
inner join tbl_livros c ON b.codigo_cliente = c.cod_livro
where status='DISPONIVEL';

select a.titulo, a.categoria, b.status from tbl_titulo a inner join tbl_livros b ON a.codigo_titulo = b.codigo_titulo
where status='DISPONIVEL';

select a.nome, d.titulo, c.status from tbl_cliente a inner join tbl_emprestimo b ON a.codigo_cliente = b.codigo_cliente
inner join tbl_livros c ON b.codigo_cliente = c.cod_livro
inner join tbl_titulo d ON c.codigo_titulo = d.codigo_titulo
where status='ALUGADO';

select a.nome, d.titulo, c.status from tbl_cliente a inner join tbl_emprestimo b ON a.codigo_cliente = b.codigo_cliente
inner join tbl_livros c ON b.codigo_cliente = c.cod_livro
inner join tbl_titulo d ON c.codigo_titulo = d.codigo_titulo
where nome='Ana Oliveira';
