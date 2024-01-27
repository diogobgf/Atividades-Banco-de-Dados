reate database trabalho4;

use trabalho4;

create table transacoes (
idTransacao int auto_increment primary key,
produto varchar(35),
categoriaProduto varchar(35),
dataTransacao date,
valorTransacao decimal(10,2)
);
insert into transacoes(produto, categoriaProduto, dataTransacao, valorTransacao) values
('Cano 3/8', 'hidráulica', '2016-6-15', 55),
('fio flexivel 25mm', 'elétrica', '2018-11-22', 150),
('Cadeira Plástica', 'Móveis', '2017-2-28', 95),
('Furadeira', 'Ferramenta', '2020-10-5', 250),
('Tinta Acrílica', 'Tintas', '2019-4-30', 184),
('Azuleijo 15,5x15,5cm', 'Pisos', '2017-1-10', 42),

select * from transacoes;

select 
idTransacao as 'Transação ID',
produto as 'Produto',
categoriaProduto as 'Categoria',
dataTransacao as 'Data da Transação',
valorTransacao as 'Valor(R$)'
from transacoes;

select
idTransacao as 'Transação ID',
produto as 'Produto',
categoriaProduto as 'Categoria',
dataTransacao as 'Data da Transação',
valorTransacao as 'Valor(R$)'
from transacoes
where valorTransacao > 100;

idTransacao as 'Transação ID',
produto as 'Produto',
categoriaProduto as 'Categoria',
dataTransacao as 'Data da Transação',
valorTransacao as 'Valor(R$)'
from transacoes
order by valorTransacao desc;

select
avg(valorTransacao) as 'Média das Transações',
max(valorTransacao) as 'Valor máximo',
min(valorTransacao) as 'Valor mínimo',
count(*) as 'Total de Transações'
from transacoes;

select
produto as 'Produto',
categoriaProduto as 'Categoria',
avg(valorTransacao) as 'Média Valor'
from transacoes
group by produto;

select
categoriaProduto as 'Categoria',
count(*) as 'Total de produtos vendidos',
sum(valorTransacao) as 'Valor total das vendas',
avg(valorTransacao) as 'Média de valor por transação'
from transacoes
group by categoriaProduto
order by count(categoriaProduto) desc;