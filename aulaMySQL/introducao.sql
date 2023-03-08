CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_produtos(
ID bigint auto_increment, PRIMARY KEY(ID),
nome varchar(255) not null,
quantidade int,
preco decimal not null
);

INSERT INTO tb_produtos(nome, quantidade, preco) 
values("Tomate",100, 8.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values("Maçã",20, 5.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values("Laranja",50, 10.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values("Banana",200, 12.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values("Uva",1200, 30.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values("Pêra",500, 2.99);

SELECT * FROM tb_produtos;

UPDATE tb_produtos SET preco = 20 WHERE ID = 5;

ALTER TABLE tb_produtos MODIFY preco decimal (6,2) not null;

UPDATE tb_produtos SET preco = 2.99 WHERE ID = 6;

ALTER TABLE tb_produtos CHANGE nome nomeProduto varchar(255)