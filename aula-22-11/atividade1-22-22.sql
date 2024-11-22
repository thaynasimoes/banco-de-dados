
-- ATIVIDADE 1
CREATE DATABASE db_colaboradores;

USE db_colaboradores;

CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
cargo VARCHAR(255),
data_nascimento DATE,
data_admissao DATE,
salario DECIMAL(10,2)
);

INSERT INTO tb_colaboradores(nome, cargo, data_nascimento, data_admissao, salario)
VALUES
("João da Silva Ramos", "Gerente", "1992-07-12", "2024-10-15", 4000.00 ),
("Mariana Gomes Abreu", "Supervisora Geral", "1985-07-13", "2023-10-20", 2500.00 ),
("Camila Almeida dos Santos", "Assistente de Limpeza", "2000-09-03", "2020-02-24", 1814.00 ),
("Gustavo Santana Lima", "Supervisor Rregional", "1992-11-25", "2022-10-02", 14000.00 ),
("Ketellyn Pereira de Souza", "Assistente de Loja", "2003-02-11", "2022-04-29", 2000.00 );

SELECT * from tb_colaboradores WHERE salario > 2000;
SELECT * from tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores set salario = 2100.00 WHERE nome = "Ketellyn Pereira de Souza";


