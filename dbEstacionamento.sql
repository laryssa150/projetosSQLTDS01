-- apagar o db
drop database dbEstacionaamento;
-- criar db
create database dbEstacionaamento;
-- acessar db
use dbEstacionaamento;
-- criat tabelas
create table tbusuarios(
codUsu int,
nome varchar(50),
senha varchar(12)
);
create table tbFuncionarios(
codFunc int,
nome varchar(100),
email varchar(100),
telefone char(10)
);
create table tbCarros(
codCar int,
nome varchar(100),
placa char(7),
cor varchar(20)
);
create table tbDiarias(
codDia int,
data date,
horaEntrada time,
dataSaida date,
horasaida time
);

-- visualizando a estrutura das tabelas
desc tbusuarios;
desc tbFuncionarios;
desc tbCarros;
desc tbDiarias;

--alterando estrutura das atabelas
alter table tbFuncionarios
add cpf char(14);

alter table tbFuncionarios
add salario decimal(9,2);

desc tbFuncionarios;