-- Criação do schema academico --
create database academico;

use academico;

-- Criação da tabela aluno --
create table aluno(
	matricula bigint primary key,
    nome varchar(100),
    situacao_academica text,
    coeficiente_academico decimal(4,2),
    periodo integer,
    curso text
) engine=InnoDB;

-- Criação da tabela professor --
create table professor(
	id bigint primary key auto_increment,
    nome varchar(100),
    tipo_vinculo varchar(20),
    email varchar(100),
    titulacao varchar(15)
) engine=InnoDB;

-- Criação da tabela curso --
create table curso(
	id bigint primary key auto_increment,
    nome varchar(200),
    turno varchar(10),
    carga_horaria integer,
    grau varchar(15),
    modalidade varchar(10),
    objetivos text
) engine=InnoDB;

-- Scripts de inserção para tabelas aluno, professor e curso --
insert into academico.aluno(matricula, nome, situacao_academica, coeficiente_academico, periodo, curso) 
values(20210094026, 'Ítalo Maciel de Paiva', 'ativo', 7.0, 13, 'Engenharia da Computação');
insert into academico.professor(nome, tipo_vinculo, email, titulacao) 
values('João', 'efetivo', 'joao@gmail.com', 'Mestre');
insert into academico.professor(nome, tipo_vinculo, email, titulacao) 
values('Maria', 'efetivo', 'maria@gmail.com', 'Doutorado');
insert into academico.curso(nome, turno, carga_horaria, grau, modalidade, objetivos)
values('Engenharia da Computação', 'Matutino', 4200, 'Bacharelado', 'Presencial', null);

-- Consultas gerais --
select * from academico.aluno;
select * from academico.professor;
select * from academico.curso;

-- Permissões de consulta e inserção ao usuário italo@localhost para o schema academico --
grant select, insert on academico.* to 'italo'@'localhost';
flush privileges;