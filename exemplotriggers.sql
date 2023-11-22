CREATE DATABASE IF NOT EXISTS ExemploTriggers;

USE ExemploTriggers;

CREATE TABLE IF NOT EXISTS clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS historico_novos_clientes (
    id_registro INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    nome_cliente VARCHAR(100),
    email_cliente VARCHAR(100),
    data_insercao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

CREATE TABLE IF NOT EXISTS pedidos (
    id_pedido INT PRIMARY KEY,
    descricao VARCHAR(100),
    status VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS historico_pedidos(
    id_historico INT AUTO_INCREMENT KEY,
    id_pedido INT,
    descricao_anterior VARCHAR(100),
    status_anterior VARCHAR(50),
    data_modificacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido)
);

CREATE TABLE IF NOT EXISTS historico_exclusao_pedidos (
    id_exclusao INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT,
    descricao_excluida VARCHAR(100),
    status_excluido VARCHAR(50),
    data_exclusao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido)
);

DELIMITER //

CREATE TRIGGER IF NOT EXISTS after_insert_cliente
AFTER INSERT ON clientes
FOR EACH ROW
BEGIN
    INSERT INTO historico_novos_clientes (id_cliente, nome_cliente, email_cliente)
    VALUES (NEW.id_cliente, NEW.nome, NEW.email);
END;

DELIMITER ;

INSERT INTO clientes (id_cliente, nome, email)
VALUES (1, 'João Paulo', 'Joao@Paulo.com'),
(2, 'Augusto', 'Augusto@gmail.com');

SELECT * FROM clientes;

SELECT * FROM historico_novos_clientes;

-- Criando o trigger para registrar atualizações de pedidos na tabela de histórico de pedidos após uma atualização na tabela de pedidos
DELIMITER //
CREATE TRIGGER IF NOT EXISTS after_update_pedido
AFTER UPDATE ON pedidos
FOR EACH ROW
BEGIN
-- Verificando se houve uma atualização e registrando as informações anteriores no histórico de pedidos
IF OLD.id_pedido IS NOT NULL THEN
INSERT INTO historico_pedidos (id_pedido, descricao_anterior, status_anterior)
VALUES (OLD.id_pedido, OLD.descricao, OLD.status);
END IF;
END;
DELIMITER ;

-- Criando o trigger para adicionar entradas na tabela de exclusão de pedidos quando registros forem excluídos da tabela de histórico de pedidos
DELIMITER //
CREATE TRIGGER IF NOT EXISTS after_delete_historico_pedidos
AFTER DELETE ON historico_pedidos
FOR EACH ROW
BEGIN
-- Registrando as informações do registro excluído na tabela de exclusão de pedidos
INSERT INTO historico_exclusao_pedidos (id_pedido, descricao_excluida, status_excluido)
VALUES (OLD.id_pedido, OLD.descricao_anterior, OLD.status_anterior);
END;
DELIMITER ;