-- Crie uma tabela de Produto com as seguintes colunas: id(identidade e incremental), nome, descrição, codigo e preço. Todas devem ser de preenchimento obrigatório.

create table produto(
	id int primary key generated always as identity
	,nome varchar(50) not null
	,descricao varchar(150) not null
	,codigo int not null
	,preco float not null
);

-- Crie uma tabela de Categoria com as seguintes colunas: id(identidade e incremental), nome, descrição. Apenas a coluna descrição deve permitir valores nulos.

create table categoria(
	id int primary key generated always as identity
	,nome varchar(50) not null
	,descricao varchar(150) null
);

-- Crie uma tabela de Carro com as seguintes colunas: id(identidade e incremental), modelo e marca. Todas devem ser de preenchimento obrigatório.

create table carro(
	id int primary key generated always as identity
	,modelo varchar(50) not null
	,marca varchar(50) not null
);

--Adicione duas novas colunas em carro. As colunas devem ser: chassi e ano. As duas colunas devem ser de preenchimento obrigatório.dicione duas novas colunas em carro. As colunas devem ser: chassi e ano. As duas colunas devem ser de preenchimento obrigatório.
alter table carro
add column chassi varchar(30) not null;

alter table carro
add column ano int not null;

-- Remove a coluna códido, da tabela Produto.
alter table produto
drop column codigo;

-- Delete a tabela Carro.
drop table carro;

-- Adicione uma nova coluna na tabela Produto. A coluna deve ser o id da categoria e não deve permitir nulos.
alter table produto 
add column categoria_id int not null;

-- Adicione uma constraint a coluna id de categoria da tabela Produto. A constraint deve ser uma Foreign Key para a coluna Id, da tabela Categoria.
alter table produto 
add constraint fk_categoria foreign key(categoria_id) references categoria(id);

select * from produto;
select * from categoria;

insert into categoria(nome,descricao)values('cccccc','eeeeee');
insert into produto (nome, descricao, preco, categoria_id)values('aaaaa','bbbbb',41.56,1);





