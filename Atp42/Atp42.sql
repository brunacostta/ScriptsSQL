-- Utilize as tabelas criadas durante a atividade pr�tica 41.
-- Insira 3 categorias na tabela categoria.

insert into categoria(nome, descricao)values('alimento','a');
insert into categoria(nome, descricao)values('moveis','b');
insert into categoria(nome, descricao)values('eletrodomestico','c');

-- Insira 6 produtos na tabela produto.
insert into produto(nome,descricao,preco,categoria_id)values('banana','fruta',4.99,2);
insert into produto(nome,descricao,preco,categoria_id)values('sofa','sala',599.99,3);
insert into produto(nome,descricao,preco,categoria_id)values('liquidificador','cozinha',265.99,4);
insert into produto(nome,descricao,preco,categoria_id)values('carne','proteina',23.99,2);
insert into produto(nome,descricao,preco,categoria_id)values('guarda-roupa','quarto',1500.99,3);
insert into produto(nome,descricao,preco,categoria_id)values('aspirador','limpeza',456.99,4);

-- Altere a descri��o de dois produtos.
update produto set descricao = 'alimento' where id = 2;
update produto set descricao = 'alimento' where categoria_id = 2;

-- Delete um produto e uma categoria. 
delete from produto where id = 2;

-- Altere uma categoria de um produto.
update produto set categoria_id = 3 where id = 8;

-- Altere o pre�o de todos os produtos tirando R$1,00 do pre�o atual.
update produto set preco = preco - 1.0 where id > 0 and id < 10;