CREATE DATABASE Delivery;
USE Delivery;

-- =====================================
-- CRIAÇÃO DAS TABELAS
-- =====================================

CREATE TABLE Cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    telefone VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE Pedido (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT NOT NULL,

    data_pedido DATE NOT NULL,
    status_pedido VARCHAR(20),
    endereco_entrega VARCHAR(200) NOT NULL,

    FOREIGN KEY (id_cliente)
        REFERENCES Cliente(id_cliente)
        ON DELETE RESTRICT
);

CREATE TABLE Entregador (
    id_entregador INT PRIMARY KEY AUTO_INCREMENT,
    telefone VARCHAR(20) NOT NULL UNIQUE,
    veiculo VARCHAR(150) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    status_entregador BOOLEAN DEFAULT TRUE
);

CREATE TABLE Entrega (
    id_entrega INT PRIMARY KEY AUTO_INCREMENT,

    id_entregador INT NOT NULL,
    id_pedido INT NOT NULL,

    status_entrega VARCHAR(20),
    data_entrega DATE NOT NULL,
    data_saida DATE NOT NULL,

    FOREIGN KEY (id_entregador)
        REFERENCES Entregador(id_entregador)
        ON DELETE CASCADE,

    FOREIGN KEY (id_pedido)
        REFERENCES Pedido(id_pedido)
        ON DELETE CASCADE
);

CREATE TABLE Produto (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL UNIQUE,
    preco DECIMAL(10,2) NOT NULL,
    descricao VARCHAR(100)
);

CREATE TABLE Item_Pedido (
    id_ItemPedido INT PRIMARY KEY AUTO_INCREMENT,

    quantidade INT NOT NULL,

    id_produto INT NOT NULL,
    id_pedido INT NOT NULL,

    FOREIGN KEY (id_produto)
        REFERENCES Produto(id_produto)
        ON DELETE RESTRICT,

    FOREIGN KEY (id_pedido)
        REFERENCES Pedido(id_pedido)
        ON DELETE RESTRICT
);