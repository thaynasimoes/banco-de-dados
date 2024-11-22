CREATE DATABASE db_etec;

CREATE TABLE tb_alunos(
id_estudante BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
data_nascimento DATE,
curso VARCHAR(255),
media_final DECIMAL(4,2),
status_matricula VARCHAR(255)
);

INSERT INTO tb_alunos(nome, data_nascimento, curso, media_final, status_matricula )
VALUES
("Ana Souza", "2005-04-12", "Desenvolviemnto de Sistemas", 8.75, "Ativo"),
("Felipe Gabriel", "2002-04-25", "Desenvolviemnto de Sistemas", 7.50, "Inativo"),
("Karen Ambrósio", "2000-06-11", "Administração de Empresas", 9.80, "Ativo"),
("Amanda Maciel", "2010-10-17", "Ensino Médio Integrado", 8.75, "Ativo"),
("Cláudio Amber", "2009-09-04", "Logistica", 9.95, "Cancelada"),
("Abner da Silva", "2004-02-27", "Ensino Médio Comum", 5.75, "Ativo"),
("Maria Carolina", "2002-04-12", "Nutrição", 7.75, "Inativo"),
("Chayenne Rute", "1998-09-07", "Nutrição", 8.70, "Ativo");

SELECT * FROM tb_alunos WHERE media_final > 7.0;
SELECT * FROM tb_alunos WHERE media_final < 7.0;

UPDATE tb_alunos SET media_final = 6.80 WHERE nome = "Maria Carolina";