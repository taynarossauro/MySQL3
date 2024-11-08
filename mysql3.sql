CREATE DATABASE IF NOT EXISTS `bancotestefacens`;
USE `bancotestefacens`;

CREATE TABLE IF NOT EXISTS `especies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `raca` varchar(100) DEFAULT NULL,
  `cor` varchar(20) DEFAULT NULL,
  `Peso` decimal(10,2) DEFAULT NULL,
  `dataNascimento` VARCHAR(80) NULL DEFAULT 'utf8mb4_0900_ai_ci',
  PRIMARY KEY (`id`)
);

INSERT INTO `especies` (`id`, `nome`, `raca`, `cor`, `Peso`) VALUES
	(1, 'Pateta', 'Cachorro', 'preto', 40.50),
	(2, 'boot', 'Cachorro', 'cinza', 29.30),
	(3, 'scobby', 'Cachorro', 'branco e preto', 37.40),
	(4, 'toto', 'Cachorro', 'preto', 17.10),
	(5, 'bolinha', 'Gato', 'marrom', 27.50),
	(6, 'cacau', 'Gato', 'preto', 36.30),
	(7, 'princesa', 'Gato', 'amarelo', 35.50),
	(8, 'jorginho', 'Cachorro', 'marrom', 25.40),
	(9, 'bolota', 'Cachorro', 'preto', 40.20),
	(10, 'caju', 'Gato', 'bege', 10.30),
	(11, 'caramelo', 'Gato', 'caramelo', 25.50),
	(12, 'Garfield', 'Gato', 'Laranja', 29.30);