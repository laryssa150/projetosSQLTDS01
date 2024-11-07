drop database dbescola;
create database dbescola;
use dbescola;

--tabela curso
create table tbcurso(
codEsc int,
id_curso int,
nome varchar(45),
professor_idprofessor int
);

-- tabela curso aluno
create table tbCursoaluno(
codCL int,
curso_idcurso int,
aluno_idaluno int
);

--tabela curso professor
create table tbprofessor(
idprofessor int,
nome varchar(45),
email varchar(45),
cpf int,
endereco varchar(45),
numero int,
complemento varchar(45),
cidade varchar(45),
estado varchar(45)
);

--tabela aluno
create table tbcontaAluno(
codAlu int,
idaluno int,
nome varchar(45),
email varchar(45),
cpf int,
endereco varchar(45),
numero int,
complemento varchar(45),
cidade varchar(45),
estado varchar(45)
);

desc tbcurso;
desc tbCursoaluno;
desc tbprofessor;
desc tbcontaAluno;