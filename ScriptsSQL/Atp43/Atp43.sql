-- Utilize as tabelas criadas durante a ATP41 e os registros criados durante a ATP42.
-- Liste todos os dados de todas as colunas da tabela Categoria.
select * from categoria where id > 0;

-- Liste todos os dados de todas as colunas da tabela Produto.
select * from produto; 

-- Liste os dados de todas as colunas da tabela Categoria, para as linhas que possuam uma descrição preenchida.
select * from categoria where descricao != '';

-- Liste os dados das colunas Id, nome e preço da tabela Produto, para as linhas que possuem um nome iniciando com C.
select id, nome, preco from produto where id > 0 and nome like 'c%' and preco > 0.0;

-- Para os próximos exercícios, caso necessário, utilize o JOIN para unir as duas tabelas.
-- Liste os dados das colunas Id, nome e preço da tabela Produto e os dados id, nome e descrição da tabela Categoria para as linhas que possuem um preço maior que 0.
select p.id, p.nome, p.preco, c.id, c.nome, c.descricao 
from produto as p 
join categoria as c 
on p.categoria_id = c.id where preco > 0.0; 

-- Liste os dados de todas as colunas da tabela Produto que possuem categoria com Id maior que 2.
select * from produto where id > 2;

-- Liste os dados de todas as colunas da tabela Categoria e o os dados da coluna nome da tabela Produto, para as categorias que estão sendo utilizadas por produtos.
select c.id, c.nome , c.descricao, p.nome from categoria as c 
join produto as p 
on c.id = p.categoria_id;