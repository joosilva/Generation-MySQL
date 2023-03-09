CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT NOT NULL PRIMARY KEY,
funcao VARCHAR(255) NOT NULL,
poder VARCHAR(255) NOT NULL,
acesso INT NOT NULL);

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT NOT NULL PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
forca BIGINT NOT NULL,
absorcao BIGINT NOT NULL,
classe_id BIGINT NOT NULL,
FOREIGN KEY (classe_id) REFERENCES tb_classes(id));

INSERT INTO tb_classes(funcao, poder, acesso)
values ("Professor", "Ensinar", 1);
INSERT INTO tb_classes(funcao, poder, acesso)
values ("Estagiário", "Auxiliar", 2);
INSERT INTO tb_classes(funcao, poder, acesso)
values ("Alune", "Absorver", 3);

INSERT INTO tb_personagens(nome, forca, absorcao, classe_id)
values ("Luís", 5000, 5000, 1);
INSERT INTO tb_personagens(nome, forca, absorcao, classe_id)
values ("Luís", 2000, 5000, 2);
INSERT INTO tb_personagens(nome, forca, absorcao, classe_id)
values ("João", 3000, 4500, 3);
INSERT INTO tb_personagens(nome, forca, absorcao, classe_id)
values ("Geandro", 5000, 3000, 1);
INSERT INTO tb_personagens(nome, forca, absorcao, classe_id)
values ("Gaby", 1000, 3000, 3);

SELECT * FROM tb_personagens WHERE poder BETWEEN 2000 AND 4000;

SELECT * FROM tb_personagens
INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id WHERE tb_classes.id = 2;

UPDATE tb_personagens SET nome = "Yuri" WHERE id = 2; 
