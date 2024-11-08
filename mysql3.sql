
-- Criando tabelas
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

-- Inserindo valores
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

-- select e inner join
SELECT
*
FROM
Alunos a 
INNER JOIN
Cidades c 
ON a.cidade_id = c.id 
