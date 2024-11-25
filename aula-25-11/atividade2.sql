CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    tamanho VARCHAR(50),
    descricao TEXT
);

INSERT INTO tb_pizzas (nome, preco, tamanho, descricao)
VALUES 
    ('Pizza de Calabresa', 30.00, 'Média', 'Pizza de calabresa com cebolas e azeitonas'),
    ('Pizza de Chocolate', 35.00, 'Pequena', 'Pizza doce com cobertura de chocolate e morangos'),
    ('Pizza Veggie', 28.00, 'Grande', 'Pizza com legumes frescos, tomate, cogumelos e queijo'),
    ('Pizza Quatro Queijos', 32.00, 'Média', 'Pizza com mozzarella, gorgonzola, parmesão e provolone'),
    ('Pizza de Lagosta com Alho', 75.00, 'Grande', 'Pizza de lagosta fresca, alho e azeite de oliva, com toque de ervas finas'),
    ('Pizza de Salmão Defumado', 65.00, 'Grande', 'Pizza com salmão defumado, creme de leite, dill e alcaparras'),
    ('Pizza Margherita', 25.00, 'Pequena', 'Pizza clássica com molho de tomate, mozzarella e manjericão'),
    ('Pizza de Frango com Catupiry', 33.00, 'Grande', 'Pizza de frango desfiado com catupiry e milho');


CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL
);

INSERT INTO tb_categorias (nome)
VALUES 
    ('Salgadas'),
    ('Doces'),
    ('Vegetariana'),
    ('Especiais'),
    ('Tradicionais');


ALTER TABLE tb_pizzas ADD categoriaid BIGINT;
ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categoria FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id);

UPDATE tb_pizzas SET categoriaid = 1 WHERE id = 1;
UPDATE tb_pizzas SET categoriaid = 2 WHERE id = 2;
UPDATE tb_pizzas SET categoriaid = 3 WHERE id = 3;
UPDATE tb_pizzas SET categoriaid = 4 WHERE id = 4;
UPDATE tb_pizzas SET categoriaid = 4 WHERE id = 5;
UPDATE tb_pizzas SET categoriaid = 4 WHERE id = 6;
UPDATE tb_pizzas SET categoriaid = 5 WHERE id = 7;
UPDATE tb_pizzas SET categoriaid = 1 WHERE id = 8;

SELECT * FROM tb_pizzas WHERE preco > 45.00;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_pizzas WHERE nome LIKE "%m%"; 

SELECT * FROM  tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoriaid = tb_categorias.id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoriaid = tb_categorias.id WHERE tb_categorias.nome = 'Doces' ;
