-- ATIVIDADE 2

CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
preco DECIMAL NOT NULL,
categoria VARCHAR(255),
quantidade INT,
data_lancamento DATE
);
INSERT INTO tb_produtos(nome, preco, categoria, quantidade, data_lancamento)
VALUES
("Harry Potter e a Pedra Filosofal", 34.90, "Fantasia", 200, "1997-06-26"),
("A Hora da Estrela", 29.90, "Literatura Brasileira, Romance", 100, "1977-01-01"),
("É Assim que Acaba", 39.90, "Romance, Drama", 150, "2016-08-05"),
("O Último Desejo", 44.90, "Fantasia", 80, "1993-01-01"),
("A Cantiga dos Pássaros e das Serpentes", 49.90, "Distopia, Ficção", 200, "2020-05-19"),
("Os Lusíadas – Edição Fac-símile da Primeira Edição de 1572", 1200.00, "Literatura Clássica Portuguesa", 5, "1572-03-01"),
("Fundamentos de Física (Volume 1)", 515.00, "Ciência, Física", 10, "2013-04-10"),
("Dom Quixote – Edição Comentada e Ilustrada", 149.90, "Literatura Clássica Espanhola", 20, "1605-01-16");

SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 55.00 WHERE nome = "O Último Desejo";


