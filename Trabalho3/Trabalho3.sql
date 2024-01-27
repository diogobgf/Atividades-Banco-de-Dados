create database trabalho3;
use trabalho3;

create table Produtos (
ProdutoID int unsigned not null auto_increment primary key,
Nome_do_produto varchar(45) not null,
Preco double not null default '0',
Quantidade_em_estoque int unsigned not null default '0'
);


insert into Produtos (Nome_do_produto, Preco, Quantidade_em_estoque) 
values 
('Smartphone', 799.99, 20),
('Tablet', 349.99, 10),
('Fone de Ouvido', 49.99, 50);

update Produtos 
set Quantidade_em_estoque = 25, Preco = 849.99
where ProdutoID = 1;

update Produtos
set Quantidade_em_estoque = Quantidade_em_estoque - 5
where ProdutoID = 2;

update Produtos
set Quantidade_em_estoque = Quantidade_em_estoque - 10
where ProdutoID = 3;

select * from Produtos;