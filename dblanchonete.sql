-- Apagar banco de dados se existir
drop database dblanchonete;
-- Criar banco de dados
create database dblanchonete;
-- Vizualizar banco de dados
show databases;
-- acessar banco de dados
use dblanchonete;
-- Vizualizando as tabelas
use dblanchonete;
-- Vizualizando as tabelas
show tables;
-- Criando as tabelas para o banco de dados
create table tbusuarios(
codUsu int,
nome varchar(30),
senha varchar(12)
);

create table tbFuncionarios(
codFun int,
email varchar(100),
telefone char(10),
logradouro varchar(100),
numero char(10),
complemento varchar (50),
bairro varchar(100),
cep char(9),
cidade varchar(100),
estado char(2));

-- visualizar a ESTRUTURA da tabela
desc tbusuarios;
desc tbFuncionarios;