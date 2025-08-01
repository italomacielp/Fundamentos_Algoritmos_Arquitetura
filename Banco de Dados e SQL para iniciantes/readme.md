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


