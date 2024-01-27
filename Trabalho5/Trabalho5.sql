create database trabalho5;
use trabalho5;

create table Autores (
AutorID int auto_increment primary key,
Nome varchar(35) not null,
Nacionalidade varchar(10)
);

create table Livros (
LivroID int auto_increment primary key,
Titulo varchar(50) not null,
AnoPublicacao int,
AutorID int not null default null,
foreign key (AutorID) references Autores(AutorID)
);

insert into Autores(Nome, Nacionalidade) values
('Fernando Pessoa', 'Portuguesa'),
('Machado de Assis', 'Brasileira'),
('Pablo Neruda', 'Chileno'),
('Khalil Gibran', 'Libanês');

insert into Livros(Titulo, AnoPublicacao, AutorID) values
('o Livro do desassossego', 1982, 1), 
('Mensagem', 1934, 1),
('Dom Casmurro', 1899, 2), 
('Memórias Póstumas de Brás Cubas', 1881, 2),
('Vinte Poemas de Amor e Uma Canção Desesperada', 1924, 3),
('Confesso que Vivi', 1974, 3), 
('O Profeta', 1923, 4),
('O Louco', 1918, 4);

select
AutorID as 'Autor ID',
Nome as 'Autor',
Nacionalidade as 'País'
from Autores;

select
LivroID as 'Livro ID',
Titulo as 'Título',
AnoPublicacao as 'Ano'
from Livros;

select
Autores.AutorID as 'Autor ID',
Autores.Nome as 'Autor',
Autores.Nacionalidade as 'País',
Livros.LivroID as 'Livro ID',
Livros.Titulo as 'Título',
Livros.AnoPublicacao as 'Ano'
from Autores
join Livros on Autores.AutorID = Livros.AutorID;

select
Autores.AutorID as 'Autor ID',
Autores.Nome as 'Autor',
Autores.Nacionalidade as 'País',
Livros.LivroID as 'Livro ID',
Livros.Titulo as 'Título',
Livros.AnoPublicacao as 'Ano'
from Autores
inner join Livros on Autores.AutorID = Livros.AutorID;

select
Autores.AutorID as 'Autor ID',
Autores.Nome as 'Autor',
Autores.Nacionalidade as 'País',
Livros.LivroID as 'Livro ID',
Livros.Titulo as 'Título',
Livros.AnoPublicacao as 'Ano'
from Autores
left join Livros on Autores.AutorID = Livros.AutorID;

select
Autores.AutorID as 'Autor ID',
Autores.Nome as 'Autor',
Autores.Nacionalidade as 'País',
Livros.LivroID as 'Livro ID',
Livros.Titulo as 'Título',
Livros.AnoPublicacao as 'Ano'
from Autores
left join Livros on Autores.AutorID = Livros.AutorID
where Autores.Nacionalidade = 'Equador' or
Autores.Nacionalidade = 'Colombia';

select
Autores.AutorID as 'Autor ID',
Autores.Nome as 'Autor',
Autores.Nacionalidade as 'País',
count(Livros.LivroID) as 'Quantidade de livros'
from Autores
left join Livros on Autores.AutorID = Livros.AutorID
group by Autores.AutorID;