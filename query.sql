UPDATE animals a SET a.nome = 'Goofy' WHERE a.nome LIKE 'Pateta';

UPDATE animals a SET a.Peso = 10 WHERE a.nome LIKE 'Garfield';

UPDATE animals a SET a.cor = 'laranja' WHERE a.raca LIKE 'Gato';

ALTER TABLE animals ADD COLUMN altura DECIMAL;

ALTER TABLE animals ADD COLUMN observacao VARCHAR(120);

DELETE FROM animals a WHERE a.Peso > 200;

DELETE FROM animals a WHERE a.nome LIKE 'C%';

ALTER TABLE animals DROP COLUMN cor;

ALTER TABLE animals MODIFY COLUMN nome VARCHAR(80);

DELETE FROM animals a WHERE a.raca LIKE 'Gato' OR a.raca LIKE 'Cachorro';

ALTER TABLE animals DROP COLUMN dataNascimento;

DELETE FROM animals a;

DROP TABLE animals;