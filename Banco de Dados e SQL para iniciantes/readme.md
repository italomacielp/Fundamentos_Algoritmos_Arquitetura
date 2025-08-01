# Banco de Dados e SQL para Iniciantes

### Objetivo:
Armazenamento de dados por um longo período de tempo, no qual dados é um conjunto de informações que define uma entidade.

### Composição:
Tabelas, colunas e linhas. Sendo eles:
- Colunas: Composta por metadados que servem para descrição de outros dados associados a entidade (tabela).
- Linhas: É correspondente a um registro da tabela.

> [!NOTE]
> Cada coluna possui um tipo de dado.

## Tipos de Dados no MySQL
| Númerico        | Data e Tempo | String        |
|----------------:|--------------|---------------|
|BOOL ou BOOLEAN  | DATE         | CHAR(M)       |
|INTEGER          | DATETIME     | VARCHAR(M)    |
|BIGINT           |              | TEXT          |
|DECIMAL[(M, [D])]|              | BLOB          |

> [!NOTE]
> O CHAR sempre terá 10 caracteres, caso o dado inserido contenha menos caracteres será acrescentado espaços em branco.
> O BLOB é uma string binária, utilizada para armazenar bits de arquivos, imagens.
> No DECIMAL, <ins>M</ins> corresponde a quantidade de dígitos e <ins>D</ins> à casas decimais. 

## Primary Key
Serve para identificação de um registro de uma tabela (linha), e útil para referenciar em relacionamento entre tabelas.

### Propriedades:
- Unicidade, torna um registro único na tabela, normalmente declarado por ID.
- Não nulo.

## Schema
Agrupa um conjunto de tabelas com um nome, serve para organização do banco de dados.

## Relacionamentos
A separação de tabelas é fundamental para uma base de dados, pois determina responsabilidades únicas para cada tabela, evita repetições de dados e complexidade de entidades. <br/>

## Foreign Key
A chave estrangeira possibilita que as tabelas possuam relacionamento, e essa chave normalmente é uma coluna que aponta para outra tabela. 
<br/>

### Exemplo
### CLIENTE

| id    |    nome     |     email     |
|-------|-------------|---------------|
 
### PEDIDO

| id    | data_criacao | observacao | valor_frete | valor_total | client_id |
|-------|--------------|------------|-------------|-------------|-----------|

### PRODUTO

| id  |  nome | valor_unitario | quantidade_estoque |
|-----|-------|----------------|--------------------|

### ITEM PEDIDO

| pedido_id | produto_id |   quantidade   |
|-----------|------------|----------------|
<br/>

> [!NOTE]
> <ins>client_id</ins> indica que para cada pedido realizado pode está associado a um cliente.
> Nesse exemplo acima, temos um relacionamento **many-to-one**, na direção de pedidos para cliente temos muitos pedidos diferentes estão associados a um cliente e na direção de cliente para pedidos temos **one-to-many**.
> Na visão de relacionamento entre produto e pedido, temos uma relação **many-to-many**, no qual um produto podem está em vários pedidos, como em um pedido pode ter vários produtos, logo para resolver isso criamos uma nova tabela indicando os <ins>id</ins> das tabelas.

