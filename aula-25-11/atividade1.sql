CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
nivel INT,
poder_ataque INT NOT NULL,
poder_defesa INT NOT NULL
);

INSERT INTO tb_personagens(nome, nivel, poder_ataque, poder_defesa)
VALUES
("Arthus Valerion", 12, 1250, 1000),
("Selene Moonshade", 8, 950, 1200),
("Kael Stormbringer", 15, 2100, 800),
("Lyra Duskwhisper", 10, 1300, 1400),
("Drakon Ironclaw", 20, 3500, 1800),
("Elysia Windwalker", 18, 2300, 1600),
("Thorne Darkbane", 14, 1800, 1300),
("Aelarith Sunblade", 16, 2200, 1100);

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "%c%"; 

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL
);
INSERT INTO tb_classes (nome) 
VALUES 
    ('Cavaleiro Sagrado'),
    ('Maga Sombria'),
    ('Guerreiro das Tempestades'),
    ('Ladina Ágil'),
    ('Bárbaro'),
    ('Arqueira'),
    ('Assassino das Sombras'),
    ('Paladino');

ALTER TABLE tb_personagens ADD classeid BIGINT;
ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes FOREIGN KEY (classeid) REFERENCES tb_classes(id);

DESCRIBE tb_personagens;
SELECT * FROM tb_personagens;

UPDATE tb_personagens SET classeid = 1 WHERE id = 1;
UPDATE tb_personagens SET classeid = 2 WHERE id = 2;
UPDATE tb_personagens SET classeid = 3 WHERE id = 3;
UPDATE tb_personagens SET classeid = 4 WHERE id = 4;
UPDATE tb_personagens SET classeid = 5 WHERE id = 5;
UPDATE tb_personagens SET classeid = 6 WHERE id = 6;
UPDATE tb_personagens SET classeid = 7 WHERE id = 7;
UPDATE tb_personagens SET classeid = 8 WHERE id = 8;

SELECT * FROM  tb_personagens INNER JOIN tb_classes
ON tb_personagens.classeid = tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classeid = tb_classes.id WHERE tb_classes.nome = 'Maga Sombria' ;


