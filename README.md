# GERENCIAMENTO_DE_ALUNOS_E_CIDADES
![output.png](https://github.com/taynarossauro/MySQL3/blob/main/output.png)

Este projeto SQL cria e gerencia um banco de dados com informações sobre alunos e as cidades em que eles residem. O banco de dados possui duas tabelas principais: `Cidades` e `Alunos`, que estão relacionadas por uma chave estrangeira.

## 📋 Estrutura do Banco de Dados

### Tabela Cidades
Armazena informações sobre diferentes cidades.
- **id**: Identificador único da cidade (chave primária).
- **nome**: Nome da cidade.
- **populacao**: População da cidade.

### Tabela Alunos
Armazena informações sobre alunos.
- **id**: Identificador único do aluno (chave primária).
- **nome**: Nome do aluno.
- **data_nasc**: Data de nascimento do aluno.
- **cidade_id**: Identificador da cidade onde o aluno reside (chave estrangeira referenciando `Cidades(id)`).

## 📝 Script de Criação e Inserção

1. **Criação das Tabelas**: 
   - A tabela `Cidades` é criada com um identificador (`id`), um campo `nome` e um campo `populacao`.
   - A tabela `Alunos` é criada com um identificador (`id`), um campo `nome`, um campo `data_nasc` e um campo `cidade_id` que referencia `id` em `Cidades`.

2. **Inserção de Dados**:
   - Dados fictícios são inseridos em ambas as tabelas. Cidades como "Arraial dos Tucanos", "Springfield" e "Hill Valley" estão incluídas na tabela `Cidades`.
   - Alunos como "Immanuel Kant", "Alan Turing" e "Ada Lovelace" são inseridos na tabela `Alunos`, com alguns registros contendo `NULL` para `cidade_id` para representar alunos sem cidade definida.

### Código SQL

```sql
CREATE TABLE Cidades (
    id INT PRIMARY KEY,
    nome VARCHAR(60) NOT NULL,
    populacao INT
);

CREATE TABLE Alunos (
    id INT PRIMARY KEY,
    nome VARCHAR(60) NOT NULL,
    data_nasc DATE,
    cidade_id INT,
    FOREIGN KEY (cidade_id) REFERENCES Cidades(id)
);

-- Inserção de Dados
INSERT INTO Cidades VALUES (1, 'Arraial dos Tucanos', 42632);
INSERT INTO Cidades VALUES (2, 'Springfield', 13820);
INSERT INTO Cidades VALUES (3, 'Hill Valley', 27383);
INSERT INTO Cidades VALUES (4, 'Coruscant', 19138);
INSERT INTO Cidades VALUES (5, 'Minas Tirith', 31394);

INSERT INTO Alunos VALUES (1, 'Immanuel Kant', DATE '1724-04-22', 4);
INSERT INTO Alunos VALUES (2, 'Alan Turing', DATE '1912-06-23', 3);
INSERT INTO Alunos VALUES (3, 'George Boole', DATE '2002-01-01', 1);
INSERT INTO Alunos VALUES (4, 'Lynn Margulis', DATE '1991-08-12', 3);
INSERT INTO Alunos VALUES (5, 'Nicola Tesla', DATE '2090-01-08', NULL);
INSERT INTO Alunos VALUES (6, 'Ada Lovelace', DATE '1978-05-28', 4);
INSERT INTO Alunos VALUES (7, 'Claude Shannon', DATE '1982-10-15', 3);
INSERT INTO Alunos VALUES (8, 'Charles Darwin', DATE '2010-02-06', NULL);
INSERT INTO Alunos VALUES (9, 'Marie Curie', DATE '2007-07-12', 3);
INSERT INTO Alunos VALUES (10, 'Carl Sagan', DATE '2000-11-20', 1);
INSERT INTO Alunos VALUES (11, 'Tim Berners-Lee', DATE '1973-12-05', 4);
INSERT INTO Alunos VALUES (12, 'Richard Feynman', DATE '1982-09-12', 1);

-- Consulta para unir as tabelas Alunos e Cidades
SELECT
*
FROM
Alunos a 
INNER JOIN
Cidades c 
ON a.cidade_id = c.id;
