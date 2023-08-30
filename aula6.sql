select a.titulo, b.status from tbl_titulo a inner join tbl_livros b ON a.codigo_titulo = b.codigo_titulo;

select a.titulo, b.status, a.descricao from tbl_titulo a inner join tbl_livros b ON a.codigo_titulo = b.codigo_titulo
where status='ALUGADO';
