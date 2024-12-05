-- apagar banco de dados
drop database dbloterica;
--criar banco de dados
create database dbloterica;
--acessar o banco de dados
use dbloterica;
--Criar tabelas
create table tbFuncionarios(
codFunc int,
nome varchar(100),
email varchar(100),
telefone char(9),
cpf char (14),
idade int,
salario decimal(9,2)
);

--inserindo registros nas tabelas
insert into tbFuncionarios(codFunc,nome,email,telefone,cpf,idade,salario)
	values(1,'Laryssa Ferreira da silva','ferreiralaryssa623@gmail.com','91519-4757','399772848-81',60,4500);
insert into tbFuncionarios(codFunc,nome,email,telefone,cpf,idade,salario)
		values(2,'Maria Aparecida','cidinha_hata2gmail.com','94080-2057','344248318-25',30,2560);
insert into tbFuncionarios(codFunc,nome,email,telefone,cpf,idade,salario)
			values(3,'Ryan silva Soares','Ryan_silova123@gmail.com','94383-8095','378954698-890',22,1600);
insert into tbFuncionarios(nome,email)
	values(4,'luana gonsalves silva','lua.gonsalves_@gmail.com');
insert into tbFuncionarios(codFunc,email,cpf)
	values(5,'lucas.silvac','345698965-10');
	insert into tbFuncionarios(codFunc,email,cpf)
	values(5,'lucas.silvac','345698965-10');
	insert into tbFuncionarios(codFunc,email,cpf)
	values(5,'lucas.silvac','345698965-10');
	insert into tbFuncionarios(codFunc,email,cpf)
	values(5,'lucas.silvac','345698965-10');

--visualizando as estruturas das tabelas
desc tbFuncionarios;
--Visualizando os registros das tabelas
select * from tbFuncionarios;

--alterar algo na tabela
--update

select codFunc,nome,email,telefone,cpf,idade,salario from tbFuncionarios;
select codFunc as 'Codigo', nome as 'Nome' from tbFuncionarios;
-- update tbFuncionarios set nome="fernando cunha",email ="Fernando.cunha@gmail.com",telefone="98923-5717" where codFunc=5;
update tbFuncionarios set codFunc=6,telefone="98845-8888",cpf="981.132.212.15" where nome="romario";
select codFunc,nome,email,telefone,cpf,idade,salario from tbFuncionarios;	
update tbFuncionarios set nome="fernando cunha",email ="Fernando.cunha@gmail.com",telefone="98923-5717",idade=57,salario=3000.90 where codFunc=5;
select codFunc,nome,email,telefone,cpf,idade,salario from tbFuncionarios;		
select "legais"as "observacao" ,nome,idade from tbfuncionarios;
select nome,idade,"legal" as "observacao",email from tbfuncionarios;
-- select nome, salario *1.10 as "Aumento de salario" from tbFuncionarios;
select codFunc,nome,email,telefone,cpf,idade,salario from tbFuncionarios;
select nome, salario *0.75 as "Desconto" from tbFuncionarios;	
select codFunc * 3.14161825 as "PI", salario *3.141825 as "Aumento", idade + 10 as idade from tbFuncionarios;