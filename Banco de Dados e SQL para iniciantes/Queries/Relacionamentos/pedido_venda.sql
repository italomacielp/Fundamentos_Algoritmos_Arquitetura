-- Alteração da tabela: --
-- Adicionando uma nova coluna na qual será uma restrição do tipo 
-- chave estrangeira será referência ao identificador de outra tabela
alter table pedido_venda.pedido
	add column cliente_id bigint,
    add constraint fk_client_id
    foreign key (cliente_id)
    references cliente(id);

-- Inserção de um novo pedido com chave estrangeira. --
insert into pedido_venda.pedido(data_criacao, observacao, data_entrega,
			valor_frete, valor_total, cliente_id)
values('2014-08-20', 'Pedido urgente', '2014-08-22', 30.22,
			400.00, 1);

select * from pedido_venda.pedido;

-- Criação da tabela produto --
create table pedido_venda.produto (
	id bigint primary key auto_increment,
    nome varchar(50),
    valor_unitario decimal(10,2),
    quantidade_estoque integer
) engine=InnoDB;

-- Criação da tabela item_pedido que serve para relacionar as tabelas
-- pedido e produto em uma relação many-to-many
create table pedido_venda.item_pedido (
	pedido_id bigint,
    produto_id bigint,
    quantidade integer,
    primary key (pedido_id, produto_id),
    foreign key (pedido_id)
	  references pedido(id),
	foreign key (produto_id)
      references produto(id)
) engine=InnoDB;

-- Inserção de registros em produto, item_pedido, pedido --
insert into pedido_venda.produto(nome, valor_unitario, quantidade_estoque)
  values('Cola Super', 20.50, 300);
insert into pedido_venda.item_pedido(pedido_id, produto_id, quantidade)
  values(3,1,2);
insert into pedido_venda.produto(nome, valor_unitario, quantidade_estoque)
values('Papel A4', 12.00, 100);
insert into pedido_venda.pedido(data_criacao, data_entrega, valor_frete, valor_total,
cliente_id) values('2014-07-11 15:22:00', '2014-07-15', 33.00, 400.00, 2);
insert into pedido_venda.item_pedido(pedido_id, produto_id, quantidade)
values(4,1,4);
insert into pedido_venda.item_pedido(pedido_id, produto_id, quantidade)
values(4,2,2);

-- A consulta realiza um produto cartesiano, no qual pode retornar valores repetidos --
select * from pedido_venda.pedido, pedido_venda.cliente;

-- A consulta só retorna registros que possuam chave estrangeira --
select * from pedido_venda.pedido p, pedido_venda.cliente c
	where p.cliente_id = c.id;
    
insert into pedido_venda.pedido(data_criacao, data_entrega, valor_frete,
valor_total, cliente_id)
values(now(), '2014-08-24', 10.00, 100.00, 1);

alter table pedido_venda.pedido
	add column forma_pagamento varchar(50) not null;
    
alter table pedido_venda.pedido
	add column status varchar(20) not null default 'ORÇAMENTO';

insert into pedido_venda.pedido(data_criacao, data_entrega, valor_total, cliente_id,
forma_pagamento)
values(now(), '2014-08-25', 20, 1, 'DINHEIRO');
    
insert into pedido_venda.pedido(data_criacao, data_entrega, valor_total, cliente_id,
forma_pagamento, status)
values(now(), '2014-08-25', 20, 1, 'DINHEIRO', 'CANCELADO');

