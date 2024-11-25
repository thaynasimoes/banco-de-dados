CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    tipo VARCHAR(50) NOT NULL
);

INSERT INTO tb_categorias (nome, tipo)
VALUES 
    ('Medicamentos', 'Saúde'),
    ('Suplementos', 'Saúde'),
    ('Cosméticos', 'Beleza'),
    ('Higiene Pessoal', 'Higiene');
    
CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    quantidade_em_estoque INT NOT NULL
);

INSERT INTO tb_produtos (nome, descricao, preco, quantidade_em_estoque)
VALUES 
    ('Paracetamol', 'Medicamento para dor e febre', 12.99, 100),
    ('Creatina', 'Suplemento para aumento de massa muscular', 150.50, 50),
    ('Shampoo de Hortelã', 'Shampoo revitalizante para cabelos oleosos', 25.00, 200),
    ('Sabonete de Glicerina', 'Sabonete para pele sensível', 5.50, 300),
    ('Ibuprofeno', 'Anti-inflamatório para dor e febre', 18.00, 80),
    ('BCAA', 'Suplemento para recuperação muscular', 120.00, 40),
    ('Creme Hidratante', 'Creme para hidratação intensiva da pele', 45.00, 150),
    ('Máscara Facial de Argila', 'Máscara para limpeza profunda da pele', 35.00, 120);

ALTER TABLE tb_produtos ADD categoriaid BIGINT;
ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id);

SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

UPDATE tb_produtos SET categoriaid = 1 WHERE id = 1;
UPDATE tb_produtos SET categoriaid = 2 WHERE id = 2;
UPDATE tb_produtos SET categoriaid = 3 WHERE id = 3;
UPDATE tb_produtos SET categoriaid = 4 WHERE id = 4;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 5;
UPDATE tb_produtos SET categoriaid = 2 WHERE id = 6;
UPDATE tb_produtos SET categoriaid = 3 WHERE id = 7;
UPDATE tb_produtos SET categoriaid = 3 WHERE id = 8;

SELECT * FROM  tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id WHERE tb_categorias.nome = 'Cosméticos' ;


    
    