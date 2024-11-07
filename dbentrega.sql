drop database dbentrega;
create database dbentrega;
use dbentrega;

-- tabela do bairro
create table tbBairro(
codBairro int,
nome varchar(100),
cidade int
);

--tabela do endereço
create table tbEndereco(
codEnde int,
id BIGINT(20),
bairro_id int(11),
tipo_local varchar(15),
logradouro varchar(128),
numero int(11),
complemento varchar(255)
);
--tabela cidade
create table tbCidade(
codCid int,
id int(11),
nome varchar(38),
estado_id int(11)
);

--tabela servico
create table tbServico(
codServ int,
id BIGINT(20),
endereco_id BIGINT(20),
solicitante_id BIGINT(20)
);

--tabela solicitante
create table tbSolicitante(
codSolic int,
id BIGINT(20),
endereco_id BIGINT(20)
);

--tabela ponto
create table tbponto(
codPont int,
id BIGINT(20),
endereco BIGINT(20)
);

--tabela estado
create table tbEstado(
codEst int,
id int(11),
sigla char(2)
);

desc tbBairro;
desc tbEndereco;
desc tbCidade;
desc tbServico;
desc tbSolicitante;
desc tbponto;
desc tbEstado;