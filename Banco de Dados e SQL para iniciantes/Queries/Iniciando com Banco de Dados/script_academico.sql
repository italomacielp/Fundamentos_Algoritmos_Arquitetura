insert into academico.aluno(matricula, nome, situacao_academica,
coeficiente_academico, periodo, curso) 
values(20210094026, 'Ítalo Maciel de Paiva', 'ativo', 7.0, 
13, 'Engenharia da Computação');
insert into professor(nome, email, data_nascimento) 
values('Maria Santos', 'maria@maria.com', '1991-02-20');
insert into curso(data_criacao, observacao, data_entrega, valor_frete, valor_total)
values('2014-06-10 10:03:20', null, '2014-06-12', 30.25, 352.50);

select * from academico.aluno