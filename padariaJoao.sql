drop database dbPadaria;
 
create database dbPadaria;
 
use dbPadaria;
 
create table tbClientes(

codCli int not null auto_increment,

produtos varchar(100),

id_cartao varchar(20),

nome varchar(50),

cpf char(14) not null unique, 

cep char(9),

logradouro varchar(100),

numero int(6),

bairro varchar(11),

primary key(codCli)

);

create table tbFuncionarios(

codFunc int not null auto_increment,

nome varchar(50),

cpf char(14) not null unique,	

funcao varchar(10),

primary key(codFunc)

);
 
create table tbFornecedores(

codForn int not null auto_increment,

logradouro varchar(100),

numero int(6),

bairro varchar(11),

cep char(9),

nome varchar (50),

tel char(11),

contato_empresa varchar (100),

primary key(codForn)

);
 
create table tbProdutos(

codProd int not null auto_increment,

nome varchar(45),

preco decimal(9,2),

quantidade int,

validade date,

codForn int not null,

primary key(codProd),

foreign key(codForn) references tbFornecedores(codForn)

);
 
 
create table tbEstoques(

codEST int not null auto_increment,

quantidade int,

lote int not null unique,

dataEntr date,

horaEntr time,

num_reposicao int,

prodnome_reposicao varchar(50),

codProd int not null,

codForn int not null,

primary key(codEST),

foreign key(codProd) references tbProdutos(codProd),

foreign key(codForn) references tbFornecedores(codForn)

);
 
create table tbCartao(

codCar int not null auto_increment,

valor_total decimal(9,2),

id_cartao char(6) not null unique,

codCli int not null,

codProd int not null,

primary key(codCar),

foreign key(codProd) references tbProdutos(codProd),

foreign key(codCli) references tbClientes(codCli)

);
 
create table tbPagamentos(

codPag int not null auto_increment,

forma_pagamento varchar(45),

primary key(codPag)

);
 
create table tbVendas(

codVenda int not null auto_increment,

valor_total decimal (9,2),

dataEntr date,

horaEntr time,

nome_func varchar(50),

id_cartao char(6) not null unique,

devolver_troco decimal(9,2),

codFunc int not null,

codProd int not null,

codCli int not null,

codPag int not null,

codCar int not null,

primary key(codVenda),

foreign key(codFunc) references tbFuncionarios(codFunc),

foreign key(codProd) references tbProdutos(codProd),

foreign key(codCli) references tbClientes(codCli),

foreign key(codPag) references tbPagamentos(codPag),

foreign key(codCar) references tbCartao(codCar)

);
 
 
insert into tbClientes(produtos,id_cartao,nome,cpf,cep,logradouro,numero,bairro)

values('Frios','25548','Luana','365.145.154-78','78978-654','rua general fragma', 87,'Juqueri');

insert into tbClientes(produtos,id_cartao,nome,cpf,cep,logradouro,numero,bairro)

values('Paes','47895','Carlos','123.456.789-68','15748-546','rua das oliveiras', 79,'Santos');

insert into tbClientes(produtos,id_cartao,nome,cpf,cep,logradouro,numero,bairro)

values('Queijos','89654','Lucas','754.541.324-00','96547-457','av paulista', 100,'Buarque');

insert into tbClientes(produtos,id_cartao,nome,cpf,cep,logradouro,numero,bairro)

values('Refrigerantes','654714','Luara','999.023.965-22','47591-333','av fim de semana ',150,'Aricanduva');

insert into tbClientes(produtos,id_cartao,nome,cpf,cep,logradouro,numero,bairro)

values('Leite','56987','nikolas','999.784.321-88','99784-150','rua camisa nova', 400,'Pires');
 


insert into tbFuncionarios(nome,cpf,funcao)

values('Laryssa','399.772.848-81','auxiliar');

insert into tbFuncionarios(nome,cpf,funcao)

values('Sara','415.487.965.99','caixa');

insert into tbFuncionarios(nome,cpf,funcao)

values('Pedro','111.235.458.77','padeiro');

insert into tbFuncionarios(nome,cpf,funcao)

values('Edna','789.652.147-87','caixa');

insert into tbFuncionarios(nome,cpf,funcao)

values('Ryan','321.754.698-78','padeiro');


insert into tbFornecedores(logradouro,numero,bairro,cep,nome,tel,contato_empresa)

values('Rua das Orquideas', 123,'Jardim Primavera', '01234-567','assai_atacadista','119874-5479','assai@atacado.com');

insert into tbFornecedores(logradouro,numero,bairro,cep,nome,tel,contato_empresa)

values('Avenida dos Girassois', 456, 'Centro', '21000-789','pao de acucar','527398-7845','acucar_pao@gmail.com');

insert into tbFornecedores(logradouro,numero,bairro,cep,nome,tel,contato_empresa)

values('Travessa das Palmeiras', 789,'Vila Nova','30123-456','walmart','217954-6541','walmartbr@yahoo.com.br');

insert into tbFornecedores(logradouro,numero,bairro,cep,nome,tel,contato_empresa)

values('Praca do Ipe Amarelo', 101,'Parque das Flores','40050-321','carrefour','449874-6541','carrefour_.com.br');

insert into tbFornecedores(logradouro,numero,bairro,cep,nome,tel,contato_empresa)

values('Estrada dos Jacarandass',321,'Campo Verde', '81000-654','atacadao','55495-9785','atacadao_.com.br_15');
 


insert into tbProdutos(nome,preco,quantidade,validade,codProd,codForn)

values('Pao',15.50,2,'2025/10/01',1,3);

insert into tbProdutos(nome,preco,quantidade,validade,codProd,codForn)

values('Queijo',30.00,1,'2024/12/31',2,2);

insert into tbProdutos(nome,preco,quantidade,validade,codProd,codForn)

values('Leite',6.50, 5, '2027/01/02' ,3,1);

insert into tbProdutos(nome,preco,quantidade,validade,codProd,codForn)

values('Coca-Cola', 21.35 ,3, '2024/09/12' ,4,5);

insert into tbProdutos(nome,preco,quantidade,validade,codProd,codForn)

values('Presunto',11.50,1, '2024/02/03' ,5,4);
 
 
insert into tbEstoques(quantidade,lote,dataEntr,horaEntr,Prodnome_reposicao,num_reposicao,codForn,codProd)

values(150,'145798','2024/01/10','10:45','Pao','1547',3,1);

insert into tbEstoques(quantidade,lote,dataEntr,horaEntr,Prodnome_reposicao,num_reposicao,codForn,codProd)

values(250,'459612','2024/10/10','12:30','Queijo','7489',2,2);

insert into tbEstoques(quantidade,lote,dataEntr,horaEntr,Prodnome_reposicao,num_reposicao,codForn,codProd)

values(300,'365478','2024/02/13','09:50','Leite','1275',1,3);

insert into tbEstoques(quantidade,lote,dataEntr,horaEntr,Prodnome_reposicao,num_reposicao,codForn,codProd)

values(350,'221465','2024/03/25','13:15','Presunto','1462',4,5);

insert into tbEstoques(quantidade,lote,dataEntr,horaEntr,Prodnome_reposicao,num_reposicao,codForn,codProd)

values(20,'326547','2024/06/10','07:45','Coca-Cola','5574',5,4);
 
 
insert into tbCartao(valor_total,id_cartao,codCli,codProd)

values(20.00, 'A3F-9D2',2,2);

insert into tbCartao(valor_total,id_cartao,codCli,codProd)

values(14.35, 'X7B-1P8',1,5);

insert into tbCartao(valor_total,id_cartao,codCli,codProd)

values(9.50, 'G2H-3L9',5,3);

insert into tbCartao(valor_total,id_cartao,codCli,codProd)

values(50.00, 'W8V-7M2',3,2);

insert into tbCartao(valor_total,id_cartao,codCli,codProd)

values(30.78, 'Z1Q-5R4',4,4);
 
insert into tbPagamentos(forma_pagamento)

values('Pix');
 
insert into tbPagamentos(forma_pagamento)

values('Debito');
 
insert into tbPagamentos(forma_pagamento)

values('Credito');
 
insert into tbPagamentos(forma_pagamento)

values('Dinheiro');
 
insert into tbPagamentos(forma_pagamento)

values('VA/VR');
 
insert into tbVendas(valor_total,dataEntr,horaEntr,nome_func,id_cartao,devolver_troco,codfunc,codProd,codCli,codPag,codCar)

values(500.75, '2024-11-28', '14:30:00', 'Laryssa','A3F-9D2', 20.00,1,2,3,4,1);

insert into tbVendas(valor_total,dataEntr,horaEntr,nome_func,id_cartao,devolver_troco,codfunc,codProd,codCli,codPag,codCar)

values(1200.50, '2024-11-29', '10:15:00','Sara','X7B-1P8', 20.00,2,3,4,5,2);

insert into tbVendas(valor_total,dataEntr,horaEntr,nome_func,id_cartao,devolver_troco,codfunc,codProd,codCli,codPag,codCar)

values(350.00, '2024-11-30', '16:45:00', 'Pedro', 'G2H-3L9', 10.00,3,4,5,1,3);

insert into tbVendas(valor_total,dataEntr,horaEntr,nome_func,id_cartao,devolver_troco,codfunc,codProd,codCli,codPag,codCar)

values(700.20, '2024-12-01', '09:00:00', 'Edna', 'W8V7M2', 30.00,4,5,1,2,4);

insert into tbVendas(valor_total,dataEntr,horaEntr,nome_func,id_cartao,devolver_troco,codfunc,codProd,codCli,codPag,codCar)

values(900.10, '2024-12-02', '13:20:00', 'Ryan', 'Z1Q5R4', 15.00,5,1,2,3,5);


insert into tbClientes(produtos,id_cartao,nome,cpf,cep,logradouro,numero,bairro)
values('Frios','25548','Luana','365.145.154-78','78978-654','rua general fragma', 87,'Juqueri');
 
insert into tbClientes(produtos,id_cartao,nome,cpf,cep,logradouro,numero,bairro)
values('Paes','47895','Carlos','123.456.789-68','15748-546','rua das oliveiras', 79,'Santos');
 
insert into tbClientes(produtos,id_cartao,nome,cpf,cep,logradouro,numero,bairro)
values('Queijos','89654','Lucas','754.541.324-00','96547-457','av paulista', 100,'Buarque');
 
insert into tbClientes(produtos,id_cartao,nome,cpf,cep,logradouro,numero,bairro)
values('Refrigerantes','654714','Luara','999.023.965-22','47591-333','av fim de semana ',150,'Aricanduva');

insert into tbClientes(produtos,id_cartao,nome,cpf,cep,logradouro,numero,bairro)
values('Leite','56987','nikolas','999.784.321-88','99784-150','rua camisa nova', 400,'Pires');

--update tbClientes set numero = 12 ,bairro = "Vila Mariana" where codCli=1;
insert into tbFuncionarios(nome,cpf,funcao)
values('Laryssa','399.772.848-81','auxiliar');
 
insert into tbFuncionarios(nome,cpf,funcao)
values('Sara','415.487.965.99','caixa');
 
insert into tbFuncionarios(nome,cpf,funcao)
values('Pedro','111.235.458.77','padeiro');
 
insert into tbFuncionarios(nome,cpf,funcao)
values('Edna','789.652.147-87','caixa');
 
insert into tbFuncionarios(nome,cpf,funcao)
values('Ryan','321.754.698-78','padeiro');

insert into tbFornecedores(logradouro,numero,bairro,cep,nome,tel,contato_empresa)
values('Rua das Orquideas', 123,'Jardim Primavera', '01234-567','assai_atacadista','119874-5479','assai@atacado.com');
 
insert into tbFornecedores(logradouro,numero,bairro,cep,nome,tel,contato_empresa)
values('Avenida dos Girassois', 456, 'Centro', '21000-789','pao de acucar','527398-7845','acucar_pao@gmail.com');
 
insert into tbFornecedores(logradouro,numero,bairro,cep,nome,tel,contato_empresa)
values('Travessa das Palmeiras', 789,'Vila Nova','30123-456','walmart','217954-6541','walmartbr@yahoo.com.br');
 
insert into tbFornecedores(logradouro,numero,bairro,cep,nome,tel,contato_empresa)
values('Praça do Ipe Amarelo', 101,'Parque das Flores','40050-321','carrefour','449874-6541','carrefour_.com.br');
 
insert into tbFornecedores(logradouro,numero,bairro,cep,nome,tel,contato_empresa)
values('Estrada dos Jacarandass',321,'Campo Verde', '81000-654','atacadao','55495-9785','atacadao_.com.br');

insert into tbProdutos(nome,preco,quantidade,validade,codProd,codForn)
values('Pao',15.50,2,'2025/10/01',1,3);
 
insert into tbProdutos(nome,preco,quantidade,validade,codProd,codForn)
values('Queijo',30.00,1,'2024/12/31',2,2);
 
insert into tbProdutos(nome,preco,quantidade,validade,codProd,codForn)
values('Leite',6.50, 5, '2027/01/02' ,3,1);
 
insert into tbProdutos(nome,preco,quantidade,validade,codProd,codForn)
values('Coca-Cola', 21.35 ,3, '2024/09/12' ,4,5);
 
insert into tbProdutos(nome,preco,quantidade,validade,codProd,codForn)
values('Presunto',11.50,1, '2024/02/03' ,5,4);


insert into tbEstoques(quantidade,lote,dataEntr,horaEntr,Prodnome_reposicao,num_reposicao,codForn,codProd)
values(150,'145798','2024/01/10','10:45','Pao','1547',3,1);
 
insert into tbEstoques(quantidade,lote,dataEntr,horaEntr,Prodnome_reposicao,num_reposicao,codForn,codProd)
values(250,'459612','2024/10/10','12:30','Queijo','7489',2,2);
 
insert into tbEstoques(quantidade,lote,dataEntr,horaEntr,Prodnome_reposicao,num_reposicao,codForn,codProd)
values(300,'365478','2024/02/13','09:50','Leite','1275',1,3);
 
insert into tbEstoques(quantidade,lote,dataEntr,horaEntr,Prodnome_reposicao,num_reposicao,codForn,codProd)
values(350,'221465','2024/03/25','13:15','Presunto','1462',4,5);
 
insert into tbEstoques(quantidade,lote,dataEntr,horaEntr,Prodnome_reposicao,num_reposicao,codForn,codProd)
values(20,'326547','2024/06/10','07:45','Coca-Cola','5574',5,4);


insert into tbCartao(valor_total,id_cartao,codCli,codProd)
values(20.00, 'A3F-9D2',2,2);
insert into tbCartao(valor_total,id_cartao,codCli,codProd)
values(14.35, 'X7B-1P8',1,5);
insert into tbCartao(valor_total,id_cartao,codCli,codProd)
values(9.50, 'G2H-3L9',5,3);
insert into tbCartao(valor_total,id_cartao,codCli,codProd)
values(50.00, 'W8V7M2',3,2);
insert into tbCartao(valor_total,id_cartao,codCli,codProd)
values(30.78, 'Z1Q5R4',4,4);

insert into tbPagamentos(forma_pagamento)
values('Pix');

insert into tbPagamentos(forma_pagamento)
values('Debito');

insert into tbPagamentos(forma_pagamento)
values('Credito');

insert into tbPagamentos(forma_pagamento)
values('Dinheiro');

insert into tbPagamentos(forma_pagamento)
values('VA/VR');

insert into tbVendas(valor_total,dataEntr,horaEntr,nome_func,id_cartao,devolver_troco,codfunc,codProd,codCli,codPag,codCar)
values(500.75, '2024-11-28', '14:30:00', 'Laryssa','A3F-9D2', 20.00,1,2,3,4,1);
insert into tbVendas(valor_total,dataEntr,horaEntr,nome_func,id_cartao,devolver_troco,codfunc,codProd,codCli,codPag,codCar)
values(1200.50, '2024-11-29', '10:15:00','Sara','X7B-1P8', 20.00,2,3,4,5,2);
insert into tbVendas(valor_total,dataEntr,horaEntr,nome_func,id_cartao,devolver_troco,codfunc,codProd,codCli,codPag,codCar)
values(350.00, '2024-11-30', '16:45:00', 'Pedro', 'G2H-3L9', 10.00,3,4,5,1,3);
insert into tbVendas(valor_total,dataEntr,horaEntr,nome_func,id_cartao,devolver_troco,codfunc,codProd,codCli,codPag,codCar)
values(700.20, '2024-12-01', '09:00:00', 'Edna', 'W8V7M2', 30.00,4,5,1,2,4);
insert into tbVendas(valor_total,dataEntr,horaEntr,nome_func,id_cartao,devolver_troco,codfunc,codProd,codCli,codPag,codCar)
values(900.10, '2024-12-02', '13:20:00', 'Ryan', 'Z1Q5R4', 15.00,5,1,2,3,5);
 
 -- update tbFuncionarios set email ="Fernando.cunha@gmail.com",telefone="98923-5717" where codFunc=5;
-- update PRODUTOS set VALOR = VALOR * 0.5 where QUANTIDADE >=300;
update tbClientes set numero = 12 ,bairro = "Vila Mariana" where codCli=1;
update tbClientes set numero = 34,bairro = "Copacabana" where codCli=2;
update tbClientes set numero = 56,bairro = "Moema" where codCli=3;
update tbClientes set numero = 78,bairro = "Botafogo" where codCli=4;
update tbClientes set numero = 90,bairro = "Liberdade" where codCli=5;

update tbFuncionarios set nome = "laryssa franco" ,funcao = "caixa" where codFunc =1;
update tbFuncionarios set nome = "Sara gomes ", funcao = "Atendente de Padaria" where codFunc =2; 
update tbFuncionarios set nome = "Pedro silva", funcao = " Confeiteiro" where codFunc=3; 
update tbFuncionarios set nome = "Edna alves", funcao = "Auxiliar de Limpeza" where codFunc=4; 
update tbFuncionarios set nome = "Ryan santos", funcao = "Auxiliar de Producao" where codFunc=5; 

update tbFornecedores set logradouro = "Rua das Flores", numero = 678, bairro = "Jardim das Palmeiras" ,cep ="12345-678" where codForn=1; 
update tbFornecedores set logradouro = "Avenida Brasil", numero = 789, bairro = "Centro" , cep ="34567-890" where codForn=2; 
update tbFornecedores set logradouro = "Travessa da Paz", numero = 890, bairro = "Vila Nova" ,cep ="34567-890" where codForn=3; 
update tbFornecedores set logradouro = "Praça Central", numero = 901, bairro = "Bairro Alto" ,cep ="45678-901" where codForn=4; 
update tbFornecedores set logradouro = "Rua São João", numero = 012 , bairro = "Jardim Primavera" ,cep ="56789-012" where codForn=5; 

update tbProdutos set nome='Pao' where codProd=1;
update tbProdutos set preco=40.50 where codProd=1;
update tbProdutos set preco=1.50 where codProd=3;
update tbProdutos set quantidade=1000 where codProd=5;
update tbProdutos set validade="2027/11/11" where codprod=2;
update tbProdutos set validade="2024/03/05" where codprod=4;
select * from tbEstoques;

update tbEstoques set lote= '256899' where lote= '145798';
update tbEstoques set lote= '568613' where lote= '459612';
update tbEstoques set horaEntr= '10:50:00' where horaEntr= '10:45:00';
update tbEstoques set horaEntr= '13:30:00' where horaEntr= '12:30:00';
update tbEstoques set quantidade= '            100' where quantidade= '20';
select * from tbEstoques;

update tbPagamentos set forma_pagamento='Debito' where codpag=1;
update tbPagamentos set forma_pagamento='Pix' where codpag=3;
update tbPagamentos set forma_pagamento='Credito' where codpag=5;
update tbPagamentos set forma_pagamento='VA/VR' where codpag=4;
update tbPagamentos set forma_pagamento='Dinheiro' where codpag=2;

select * from tbProdutos nome like '%A';
select * from tbVendas where valor >100 and valor <150;
select * from tbProdutos where nome not like 'E%';
select * from tbProdutos where nome like '%MO%' or tipo like '%MA%';
select * from produtos where quantidade >300;


desc tbClientes;
desc tbFuncionarios;
desc tbFornecedores;
desc tbProdutos;
desc tbEstoques;
desc tbCartao;
desc tbPagamentos;
desc tbVendas;


select * from tbVendas;




select * from tbClientes;
select * from tbFuncionarios;
select * from tbFornecedores;
select * from tbProdutos;
select * from tbEstoques;
select * from tbCartao;
select * from tbPagamentos;
select * from tbVendas;