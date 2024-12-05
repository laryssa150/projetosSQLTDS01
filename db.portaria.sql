drop database dbPortaria;
 
create database dbPortaria;
 
use dbPortaria;
 
create table tbFuncionarios(
codFunc int not null auto_increment,
nome varchar(100) not null,
rg char(13) unique,
cpf char(14) not null unique,
sexo char(1) default 'F' check(sexo in('F','M')),
salario decimal(9,2) default 0 check(salario >=0),
primary key(codFunc));
 
create table tbClientes(
codCli int not null auto_increment,
nome varchar(50),
email varchar(50),
telCel char(10),
primary key(codCli));
 
create table tbFornecedores(
codForn int not null auto_increment,
nome varchar(100),
email varchar(100),
telefone char(10),
cnpj char(18) not null unique,
primary key(codForn));
 
create table tbUsuarios(
codUsu int not null auto_increment,
nome varchar(50) not null,
senha varchar(20) not null,
codFunc int not null,
primary key(codUsu),
foreign key(codFunc)references tbFuncionarios(codFunc));
 
create table tbProdutos(
codProd int not null auto_increment,
descricao varchar(100) not null,
lote char(12),
validade date,
dataEntr date,
horaEntr time,
quantidade int,
preco decimal(9,2),
codForn int not null,
primary key(codProd),
foreign key(codForn)references tbFornecedores(codForn));
 
create table tbVendas(
codVend int not null auto_increment,
valor decimal(9,2),
quantidade int,
dataVend date,
horaVend time,
codUsu int not null,
codProd int not null,
codCli int not null,
primary key(codVend),
foreign key(codUsu)references tbUsuarios(codUsu),
foreign key(codProd)references tbProdutos(codProd),
foreign key(codCli)references tbClientes(codCli));
 
desc tbFuncionarios;
desc tbUsuarios;
desc tbClientes;
desc tbFornecedores;
desc tbProdutos;
desc tbVendas;
 
insert into tbFuncionarios(nome,rg,cpf,sexo,salario)
	values('Matheus Melo','52.741.528-7','425.785.985-77',
		'M',2500.45);
insert into tbFuncionarios(nome,rg,cpf,sexo,salario)
	values('Leticia Borges','45.521.258-8','524.524.854-88',
		'F',3500.45);
insert into tbFuncionarios(nome,rg,cpf,sexo,salario)
	values('Pedro Jose','58.524.789-8','574.857.854-88',
		'M',2555.56);
insert into tbFuncionarios(nome,rg,cpf,sexo,salario)
	values('Larissa Rodrigues','85.854.742-8','524.854.879-91',
		'F',4255.22);
 
insert into tbClientes(nome,email,telCel)
	values('Joana Antunes','joana.antunes@hotmail.com',
		'95248-7859');
insert into tbClientes(nome,email,telCel)
	values('Katia Assad','katia.assad@hotmail.com',
		'98572-8625');
insert into tbClientes(nome,email,telCel)
	values('Mauricio de Souza','mauricio.souza@hotmail.com',
		'98574-9852');
 
insert into tbFornecedores(nome,email,telefone,cnpj)
	values('Armarinho Fernandez','sac@afernandez.com.br',
		'98523-8745','48.076.228/0001-91');
insert into tbFornecedores(nome,email,telefone,cnpj)
	values('Hortifrut Fernando','sac@hfernando.com.br',
		'91472-5236','42.489.825/0001-61');
insert into tbFornecedores(nome,email,telefone,cnpj)
	values('Assai Atacadista','sac@aatacadista.com.br',
		'92365-9512','06.057.223/0001-71');
insert into tbFornecedores(nome,email,telefone,cnpj)
	values('Tenda Atacado','sac@tatacado.com.br',
		'93574-8536','01.157.555/0011-86');
 
insert into tbUsuarios(nome,senha,codFunc)
	values('pedro.jose','123456',3);
insert into tbUsuarios(nome,senha,codFunc)
	values('leticia.borges','654321',2);
insert into tbUsuarios(nome,senha,codFunc)
	values('larissa.rodrigues','621453',4);
 
insert into tbProdutos(descricao,lote,validade,
dataEntr,horaEntr,quantidade,preco,codForn)
	values('Papel sulfite', '524515','2030/11/19',
		'2024/11/19','11:46:00',10,25.35,1);
insert into tbProdutos(descricao,lote,validade,
dataEntr,horaEntr,quantidade,preco,codForn)
	values('Banana', '452571','2024/11/22',
		'2024/11/21','08:14:00',100,3.50,2);
insert into tbProdutos(descricao,lote,validade,
dataEntr,horaEntr,quantidade,preco,codForn)
	values('Leite condensado', '521457','2025/11/21',
		'2024/11/21','10:00:00',15,5.85,3);
insert into tbProdutos(descricao,lote,validade,
dataEntr,horaEntr,quantidade,preco,codForn)
	values('Papel higienico', '325412','2025/10/19',
		'2024/11/21','09:44:05',85,5.55,4);
insert into tbProdutos(descricao,lote,validade,
dataEntr,horaEntr,quantidade,preco,codForn)
	values('Polpa de tomate', '325412','2025/11/21',
		'2024/11/21','09:50:00',78,5.50,3);
 
 
insert into tbVendas(valor,quantidade,dataVend,horaVend,codUsu,codProd,codCli)
	values(10.50,5,'2024/11/21','08:30:05',2,2,2);
insert into tbVendas(valor,quantidade,dataVend,horaVend,codUsu,codProd,codCli)
	values(3.35,3,'2024/11/20','11:30:05',3,3,3);
insert into tbVendas(valor,quantidade,dataVend,horaVend,codUsu,codProd,codCli)
	values(100.25,1,'2024/11/19','10:32:05',1,1,3);
insert into tbVendas(valor,quantidade,dataVend,horaVend,codUsu,codProd,codCli)
	values(55.50,5,'2024/11/19','10:35:05',1,4,3);
insert into tbVendas(valor,quantidade,dataVend,horaVend,codUsu,codProd,codCli)
	values(50.00,2,'2024/11/19','10:40:05',1,1,3);
 
 
 
select * from tbFuncionarios;
select * from tbClientes;
select * from tbFornecedores; 
select * from tbUsuarios;
select * from tbProdutos;
select * from tbVendas;
 
-- inner join
 
select func.nome as 'Nome do funcionario'
,usu.nome as 'Nome do usuario'
from tbUsuarios as usu
inner join tbFuncionarios as func
on usu.codFunc = func.codFunc
where func.codfunc = 2;
 
select func.nome as 'Nome do funcionario'
,usu.nome as 'Nome do usuario'
from tbUsuarios as usu
inner join tbFuncionarios as func
on usu.codFunc = func.codFunc
where func.nome like '%o%';


select func.nome,cli.nome,prod.descricao,vend.quantidade,vend.valor
from tbVendas as vend
inner join tbFuncionarios
as func on func.codfunc = vend.codUsu
inner join tbClientes
as cli on vend.codcli = cli.codcli
inner join tbProdutos as prod on vend.codProd = prod.codProd;

-- Nome do fornecedor, lote do produto , validade do produto, 
-- email do fornecedor, quantidade de produto, 
-- cnpj do fornecedor, preço do produto.
 
-- A pergunta é para a tabela produtos.

select forn.nome as 'nome do fornecedor',prod.lote as 'lote do produto',prod.validade as 'validade do produto',forn.email as 'email do fornecedor',prod.quantidade as 'quantidade do produto',forn.cnpj as 'cnpj do fornecedor',prod.preco as 'preco do produto'
from tbProdutos as prod inner join tbFornecedores as forn on prod.codForn = forn.codForn;
