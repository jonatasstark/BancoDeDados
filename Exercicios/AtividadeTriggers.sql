-- Gabriel Lucas e Jonatas Gabriel

CREATE DATABASE IF NOT EXISTS exerciciotriggers;

USE exerciciotriggers;

-- EXERCÍCIO 1
CREATE TABLE IF NOT EXISTS funcionarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    data_admissao DATE
);

CREATE TABLE IF NOT EXISTS aumento_salario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_funcionario INT NOT NULL,
    novo_salario VARCHAR(255) NOT NULL,
    data_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id)
);

INSERT INTO funcionarios (nome, salario, data_admissao)
VALUES ('Jon', '3500', '2023/11/22');

DELIMITER //

CREATE TRIGGER after_funcionario_insert
AFTER INSERT ON funcionarios
FOR EACH ROW 
BEGIN
    IF NEW.salario > 3000 THEN
        INSERT INTO aumento_salario (id_funcionario, novo_salario)
        VALUES (NEW.id, NEW.salario);
    END IF;
END;

DELIMITER ;

-- EXERCÍCIO 2
CREATE TABLE IF NOT EXISTS estoque (
    id_item INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    quantidade INT NOT NULL,
    data_atualizacao DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS historico_estoque(
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_item INT NOT NULL,
    quantidade_antiga INT NOT NULL,
    quantidade_nova INT NOT NULL,
    data_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_item) REFERENCES estoque(id_item)
);

INSERT INTO estoque (nome, quantidade, data_atualizacao)
VALUES ('Boné', 50, '2023/10/22')

UPDATE estoque SET quantidade = 100 WHERE id_item = 1;

DELIMITER //

CREATE TRIGGER after_update_estoque
AFTER UPDATE ON estoque
FOR EACH ROW 
BEGIN
    IF OLD.quantidade != NEW.quantidade THEN
        INSERT INTO historico_estoque (id_item, quantidade_antiga, quantidade_nova)
        VALUES (NEW.id_item, OLD.quantidade, NEW.quantidade);
    END IF;
END;

DELIMITER ;

-- EXERCÍCIO 3
CREATE TABLE IF NOT EXISTS usuario(
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    senha VARCHAR(100) NOT NULL,
    acao VARCHAR(100) NOT NULL,
    data_acesso TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS acesso(
    id_acesso INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT NOT NULL,
    ultima_acao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

INSERT INTO usuario (nome, senha, acao)
VALUES ('gabriel', 'senha', 'login');

DELIMITER //

CREATE TRIGGER after_insert_usuario
AFTER INSERT ON usuario
FOR EACH ROW 
BEGIN
    IF NEW.acao = 'login' || NEW.acao = 'logout' THEN
        INSERT INTO acesso (id_usuario)
        VALUES (NEW.id_usuario);
    END IF;
END;

DELIMITER ;