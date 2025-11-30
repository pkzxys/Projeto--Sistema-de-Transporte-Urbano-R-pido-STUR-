-- -----------------------------------------------------
-- Script de Inserção (DML) - Pizzaria "Sabor em Fatias"
-- -----------------------------------------------------
USE pizzaria_db;

-- 1. Inserir Clientes
INSERT INTO CLIENTE (ID_Cliente, Nome, Telefone, Rua, Numero, Bairro, Complemento) 
VALUES 
(1, 'Ana Silva', '(11) 98877-6655', 'Rua das Flores', '100', 'Centro', 'Apto 101'),
(2, 'Bruno Costa', '(11) 91234-5678', 'Avenida Principal', '500', 'Vila Nova', NULL),
(3, 'Carla Dias', '(11) 99999-0000', 'Travessa dos Pássaros', '15B', 'Jardim Céu', 'Fundos');

-- 2. Inserir Produtos
INSERT INTO PRODUTO (ID_Produto, Nome, Descricao, Tamanho, Preco) 
VALUES 
(1, 'Pizza Calabresa', 'Calabresa, cebola e azeitonas', 'Grande', 45.00),
(2, 'Pizza Mussarela', 'Queijo mussarela e tomate', 'Grande', 42.00),
(3, 'Pizza Frango Catupiry', 'Frango desfiado com catupiry', 'Média', 38.50),
(4, 'Refrigerante Coca-Cola', 'Lata 350ml', 'Lata', 6.50),
(5, 'Água Mineral sem Gás', 'Garrafa 500ml', 'Garrafa', 4.00);

-- 3. Inserir Pedidos
-- Registra os pedidos com Valor_Total 0.00,
-- pois o valor correto será calculado e atualizado posteriormente,
-- com base na soma dos seus itens.
INSERT INTO PEDIDO (ID_Pedido, DataHora, Valor_Total, Status, FK_ID_Cliente) 
VALUES 
(101, '2025-11-14 19:30:00', 0.00, 'Entregue', 1), -- Pedido da Ana Silva
(102, '2025-11-14 19:45:00', 0.00, 'Entregue', 2), -- Pedido do Bruno Costa
(103, '2025-11-14 20:10:00', 0.00, 'Em Preparo', 1); -- Outro pedido da Ana Silva

-- 4. Inserir os Itens dos Pedidos
INSERT INTO ITEM_PEDIDO (FK_ID_Pedido, FK_ID_Produto, Quantidade, Preco_Unitario) 
VALUES 
(101, 1, 1, 45.00), -- 1x Pizza Calabresa (ID 1)
(101, 4, 1, 6.50);  -- 1x Coca-Cola (ID 4)

INSERT INTO ITEM_PEDIDO (FK_ID_Pedido, FK_ID_Produto, Quantidade, Preco_Unitario) 
VALUES 
(102, 2, 2, 42.00), -- 2x Pizza Mussarela (ID 2)
(102, 4, 1, 6.50);  -- 1x Coca-Cola (ID 4)

INSERT INTO ITEM_PEDIDO (FK_ID_Pedido, FK_ID_Produto, Quantidade, Preco_Unitario) 
VALUES 
(103, 3, 1, 38.50); -- 1x Frango Catupiry (ID 3)

-- 5. Atualizar os Valores Totais dos Pedidos
UPDATE PEDIDO SET Valor_Total = (45.00 + 6.50) WHERE ID_Pedido = 101;
UPDATE PEDIDO SET Valor_Total = ( (2 * 42.00) + 6.50 ) WHERE ID_Pedido = 102;
UPDATE PEDIDO SET Valor_Total = 38.50 WHERE ID_Pedido = 103;