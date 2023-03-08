CREATE DATABASE db_empresa;

USE db_empresa;

CREATE TABLE tb_colaboradores(
ID bigint auto_increment PRIMARY KEY,
nome varchar(255) not null,
salario decimal(6,2) not null,
cpf bigint,
anoContratacao int
);

INSERT INTO tb_colaboradores(nome, salario, cpf, anoContratacao)
values ("João", 7000.00, 123456789, 2023);
INSERT INTO tb_colaboradores(nome, salario, cpf, anoContratacao)
values ("Carlos", 3000.00, 987654321, 2020);
INSERT INTO tb_colaboradores(nome, salario, cpf, anoContratacao)
values ("Lúcia", 9000.00, 123789456, 2022);
INSERT INTO tb_colaboradores(nome, salario, cpf, anoContratacao)
values ("Marcelo", 1500.00, 741852963, 2023);
INSERT INTO tb_colaboradores(nome, salario, cpf, anoContratacao)
values ("Júlia", 5000.00, 987123654, 2021);

SELECT * FROM tb_colaboradores;

DELETE FROM tb_colaboradores WHERE ID = 1;
DELETE FROM tb_colaboradores WHERE ID = 2;

SELECT * FROM tb_colaboradores WHERE salario > 3000;






