CREATE DATABASE SenaiBD;

USE SenaiBD;

CREATE TABLE clientes(
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR (255) UNIQUE NOT NULL,
    telefone VARCHAR (20),
    endereco VARCHAR (255),
    cidade VARCHAR (100),
    estado VARCHAR(2),
    cep VARCHAR (10),
    datacadastro DATE DEFAULT CURRENT_DATE
);

SELECT * FROM clientes;

INSERT INTO clientes (nome, email, telefone, endereco, cidade, estado, cep)
VALUES ('Jonatas Gabriel', 'jonatas@teste.com', '3499999999', 'Rua 4', 'Uberaba',
'MG', '123456789');

INSERT INTO clientes (nome, email, telefone, endereco, cidade, estado, cep)
VALUES ('Gabriel Lucas', 'gabriel@teste.com', '34999993434', 'Rua 5', 'Uberaba',
'MG', '123456789');

INSERT INTO clientes (nome, email, telefone, endereco, cidade, estado, cep)
VALUES ('João Silva', 'joao@teste.com', '3499222999', 'Rua 6', 'Uberlândia',
'MG', '123456555');

INSERT INTO clientes (nome, email, telefone, cidade, endereco, estado, cep)
VALUES ('Tigrão', 'Tigaosilva123@gmail', '34912345678', 'Uberaba', 'Rua 777',
'MG', '123456789');

UPDATE clientes
SET telefone = '3499999343'
WHERE nome = 'Gabriel Lucas';

UPDATE clientes
SET nome = 'Tin'
WHERE id_cliente = 4;

DELETE FROM clientes
WHERE id_cliente = 5;

CREATE TABLE produtos(
    id INT PRIMARY KEY,
    nome VARCHAR(50),
    preço DECIMAL(10, 2)
);

SELECT * FROM produtos;

ALTER TABLE produtos
ADD COLUMN origem VARCHAR(255);

ALTER TABLE clientes
CHANGE celular telefone VARCHAR(255);

DROP TABLE produtos;