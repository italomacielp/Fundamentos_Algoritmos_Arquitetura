create database academico;

use academico;

create table aluno(
	matricula bigint primary key,
    nome varchar(100),
    situacao_academica text,
    coeficiente_academico decimal(4,2),
    periodo integer,
    curso text
) engine=InnoDB;

create table professor(
	id bigint primary key auto_increment,
    nome varchar(100),
    tipo_vinculo varchar(20),
    email varchar(100),
    titulacao varchar(15)
) engine=InnoDB;

create table curso(
	id bigint primary key auto_increment,
    nome varchar(200),
    turno varchar(10),
    carga_horaria integer,
    grau varchar(15),
    modalidade varchar(10),
    objetivos text
) engine=InnoDB;

grant select, insert on academico.* to 'italo'@'localhost';
flush privileges;