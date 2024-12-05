drop database dbprodutos;
 
create database dbprodutos;
 
use dbprodutos;
 
CREATE TABLE PRODUTOS(

CODIGO INT,

NOME VARCHAR(50),

TIPO VARCHAR(25),

QUANTIDADE INT,

VALOR DECIMAL(10,2));
 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) 
VALUES ( 1,'IMPRESSORA', 'INFORMATICA', 200, 600.00 );

INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) 
VALUES ( 2,'CAMERA DIGITAL', 'DIGITAIS', 300, 400.00 );

INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) 
VALUES ( 3, 'DVD PLAYER', 'ELETRONICOS', 250, 500.00 );

INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) 
VALUES ( 4,'MONITOR', 'INFORMATICA', 400, 900.00 );

INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) 
VALUES ( 5,'TELEVISOR', 'ELETRONICOS', 350, 650.00 );

INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) 
VALUES ( 6,'FILMADORA DIGITAL', 'DIGITAIS', 500, 700.00 );

INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) 
VALUES ( 7,'CELULAR', 'TELEFONE', 450, 850.00 );

INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) 
VALUES ( 8,'TECLADO', 'INFORMATICA', 300, 450.00 );

INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) 
VALUES ( 9,'VIDEOCASSETE', 'ELETRONICOS', 200, 300.00 );

INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) 
VALUES ( 10,'MOUSE', 'INFORMATICA', 400, 60.00 );

desc produtos;

-- Aumente em 12% o valor dos produtos cujos nomes iniciem com a letra 'F'

update produtos set valor=valor *1.12 where nome like = 'F%';
select * from produtos nome like 'F%'; 

-- Aumentar em 50 unidades todos os produtos cujo valor seja maior que 400 e inferior a 600

update produtos set quantidade=quantidade +50 where valor >400 and valor <600;
select * from produtos where valor >400 and valor <600; 

-- Aplicar um desconto de 50% (*0.5) em todos os produtos que as unidades de estoque sejam maiores que 300 

update produtos set valor=valor *0.5 where valor >300;
	select * from produtos where quantidade >300;

-- Exiba o produto de CODIGO = 4 

select * from produtos where codigo ='4';

-- Exibir todos os produtos que não tenham a letra 'Y'

select * from produtos where nome not like '%Y%';

-- Exibir todos os produtos que se iniciem com nome 'MO' e tenham como tipo as letras 'MA'

select * from produtos where nome like 'MO%' or tipo like '%MA%';

