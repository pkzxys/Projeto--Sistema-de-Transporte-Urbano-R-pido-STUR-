-- -----------------------------------------------------
-- Script de Criação (DDL) - Pizzaria "Sabor em Fatias"
-- -----------------------------------------------------

-- Apaga e recria o banco de dados para um ambiente limpo
DROP DATABASE IF EXISTS pizzaria_db;
CREATE DATABASE pizzaria_db;
USE pizzaria_db;

-- -----------------------------------------------------
-- Tabela CLIENTE
-- -----------------------------------------------------
CREATE TABLE CLIENTE (
  ID_Cliente INT NOT NULL AUTO_INCREMENT,
  Nome VARCHAR(100) NOT NULL,
  Telefone VARCHAR(15) NOT NULL,
  Rua VARCHAR(150) NOT NULL,
  Numero VARCHAR(10) NOT NULL,
  Bairro VARCHAR(50) NOT NULL,
  Complemento VARCHAR(50) NULL,
  PRIMARY KEY (ID_Cliente)
);

-- -----------------------------------------------------
-- Tabela PRODUTO
-- -----------------------------------------------------
CREATE TABLE PRODUTO (
  ID_Produto INT NOT NULL AUTO_INCREMENT,
  Nome VARCHAR(100) NOT NULL,
  Descricao VARCHAR(255) NULL,
  Tamanho VARCHAR(20) NOT NULL,
  Preco DECIMAL(10, 2) NOT NULL,
  PRIMARY KEY (ID_Produto)
);

-- -----------------------------------------------------
-- Tabela PEDIDO
-- -----------------------------------------------------
CREATE TABLE PEDIDO (
  ID_Pedido INT NOT NULL AUTO_INCREMENT,
  DataHora DATETIME NOT NULL,
  Valor_Total DECIMAL(10, 2) NOT NULL,
  Status VARCHAR(20) NOT NULL DEFAULT 'Recebido',
  FK_ID_Cliente INT NOT NULL,
  PRIMARY KEY (ID_Pedido),
  FOREIGN KEY (FK_ID_Cliente) REFERENCES CLIENTE (ID_Cliente)
    ON DELETE RESTRICT -- Impede excluir um cliente que tenha pedidos
    ON UPDATE CASCADE -- Se o ID_Cliente mudar (raro), atualiza aqui
);

-- -----------------------------------------------------
-- Tabela ITEM_PEDIDO
-- -----------------------------------------------------
CREATE TABLE ITEM_PEDIDO (
  FK_ID_Pedido INT NOT NULL,
  FK_ID_Produto INT NOT NULL,
  Quantidade INT NOT NULL,
  Preco_Unitario DECIMAL(10, 2) NOT NULL, -- "Congela" o preço do momento da compra
  PRIMARY KEY (FK_ID_Pedido, FK_ID_Produto),
  FOREIGN KEY (FK_ID_Pedido) REFERENCES PEDIDO (ID_Pedido)
    ON DELETE CASCADE, -- Se o Pedido for deletado, os itens vão juntos
  FOREIGN KEY (FK_ID_Produto) REFERENCES PRODUTO (ID_Produto)
    ON DELETE RESTRICT -- Impede excluir um produto que já foi vendido
);