alter table academico.professor
	add column curso_id bigint,
    add constraint fk_curso_id
    foreign key (curso_id)
    references curso(id);
    
select * from academico.curso;

insert into academico.professor(nome, tipo_vinculo, email,
			titulacao, curso_id) values ('Joana', 'Substituta',
            'joana@gmail.com', 'Mestre', 1);
            
select * from academico.professor;

create table academico.aluno_curso (
	id_aluno bigint,
    id_curso bigint,
    primary key (id_aluno, id_curso),
    foreign key (id_aluno)
	  references aluno(matricula),
	foreign key (id_curso)
      references curso(id)
) engine=InnoDB;

insert into academico.aluno_curso(id_aluno, id_curso)
values(20210094026, 1);

select * from academico.aluno_curso;