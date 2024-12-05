-- Apagar banco de dados
drop database dbzologico;
-- criar banco de dados
create database dbzologico;
-- acessar banco de dados
use dbzologico;
-- criar tabela
create table tbAnimais(
codAni int,
tipo char(15),
nome char(30),
idade int,
valor decimal(10,2)
);

-- inserindo registros nas tabelas
insert into tbAnimais(codAni,tipo,nome,idade,valor)
	values(1,'cachorro','djudi',3,300);
insert into tbAnimais(codAni,tipo,nome,idade,valor)
	values(2,'cachorro','sula',5,300);
insert into tbAnimais(codzoo,tipo,nome,idade,valor)
	values(3,'cachorro','sarina',7,300);
insert into tbAnimais(codAni,tipo,nome,idade,valor)
	values(4,'gato','pipa',2,500);
insert into tbAnimais(codAni,tipo,nome,idade,valor)
	values(5,'gato','sarangue',2,500);
insert into tbAnimais(codAni,tipo,nome,idade,valor)
	values(6,'gato','clarences',1,500);
insert into tbAnimais(codAni,tipo,nome,idade,valor)
	values(7,'coruga','agnes',0,700);
insert into tbAnimais(codAni,tipo,nome,idade,valor)
	values(8,'coruja','arabela',1,700);
insert into tbAnimais(codAni,tipo,nome,idade,valor)
	values(9,'sapo','quash',1,100);
insert into tbAnimais(codAni,tipo,nome,idade,valor)
	values(10,'peixe','fish',0,100);

-- visualizar tabela
desc tbAnimais;
-- vizualizar os registros dass tabelas
select * from tbAnimais;

--escreva um comando que exiba todas as colunas e todas asa linhas da tabela animais
select tipo from tbAnimais;

-- escreva um comando que exiba apenas as colunas,tipo,nome da tabela animais aparecendo todos os registros da tabela
select tipo, nome from tbAnimais;

-- Escreva um comando que exiba apenas as colunas TIPO, NOME e IDADE da tabela ANIMAIS, apresentado todos os registros.

select tipo, nome, idade from tbAnimais;

-- Escreva um comando que exiba apenas as colunas TIPO e NOME da tabela ANIMAIS apresentando todos os registros. Apresente a legenda da coluna TIPO com o alias [Tipo de Animal] e a coluna nome com o alias [Nome do Animal]. 

select  tipo as 'tipo de animais',nome as 'nome do Animal' from tbAnimais;

-- Escreva um comando que exiba apenas as colunas TIPO, NOME e IDADE da tabela ANIMAIS apresentando todos os registros. Apresente a legenda da coluna TIPO com o alias [Tipo de Animal], da coluna nome com o alias [Nome do Animal] e da coluna IDADE com o alias [Tempo de Vida]. 

select  tipo as 'tipo de animais',nome as 'nome do Animal',idade as 'tempode vida' from tbAnimais;

-- Escreva um comando que apresente os dados da tabela ANIMAIS da seguinte forma

select 'animal domestico' as 'procedencia', tipo as 'tipo', nome as 'nome', idade as 'tempode vida' from tbAnimais;

-- Escreva um comando que apresente os dados da tabela ANIMAIS da seguinte forma

 select tipo as 'tipo', nome as 'nome', idade as 'idade', valor as 'valor original', valor *1.10 as 'valor de vendas' from tbAnimais;

 -- Escreva um comando que apresente os dados da tabela ANIMAIS como vemos a seguir, apresentando uma vez os dados repetidos. 

select distinct tipo as 'tipo', valor as 'valor original', valor*1.10 as 'valor de venda' from tbAnimais;