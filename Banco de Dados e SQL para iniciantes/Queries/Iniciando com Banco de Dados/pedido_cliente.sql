-- Lista o usuário atual autenticado --
select current_user();
-- Insere uma senha para um usuário (Conectado com o usuário)--
set password = '';
-- Cria um novo usuário com uma determinada senha --
create user 'italo'@'localhost' identified by 'teste'; 
-- Cria um schema --
create database pedido_venda;
-- Aponta para o schema --
use pedido_venda;
-- Forma arbitrária: create table pedido_venda.cliente (quando não está no schema) --
-- ------------------------------------------------------------ --
create table cliente(
	id bigint primary key auto_increment,
    nome varchar(100),
    email varchar(50),
    data_nascimento date
) engine=InnoDB;

create table pedido(
	id bigint primary key auto_increment,
    data_criacao datetime,
    observacao TEXT,
    data_entrega date,
    valor_frete decimal(6,2),
    valor_total decimal(10,2)
) engine=InnoDB;
-- ------------------------------------------------------------ --
-- Permissões (GRANT) - Permissão ao usuário de inserção e consulta.
grant select, insert on pedido_venda.* to 'italo'@'localhost';
flush privileges;
-- Comando para inserção de novos registros nas tabelas cliente e pedido --
insert into cliente(nome, email, data_nascimento) 
values('João Silva', 'joao@joao.com', '1990-10-10');
insert into cliente(nome, email, data_nascimento) 
values('Maria Santos', 'maria@maria.com', '1991-02-20');
insert into pedido(data_criacao, observacao, data_entrega, valor_frete, valor_total)
values('2014-06-10 10:03:20', null, '2014-06-12', 30.25, 352.50);
-- Consulta de registros nas tabelas cliente e pedido --
select * from cliente;
select * from pedido;

