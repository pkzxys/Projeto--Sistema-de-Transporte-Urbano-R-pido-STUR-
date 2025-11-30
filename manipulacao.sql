-- -----------------------------------------------------
-- Script de Manipulação (UPDATE / DELETE)
-- -----------------------------------------------------
USE pizzaria_db;

-- --- Comandos UPDATE ---

-- UPDATE 1: Atualizar o status de um pedido.
-- Objetivo: O Pedido 103 (da Ana Silva) saiu para entrega.
UPDATE PEDIDO
SET Status = 'Saiu para Entrega'
WHERE ID_Pedido = 103;

-- UPDATE 2: Atualizar o preço de um produto.
-- Objetivo: A Pizza Mussarela (ID 2) teve um aumento.
UPDATE PRODUTO
SET Preco = 43.50
WHERE ID_Produto = 2;

-- UPDATE 3: Atualizar o complemento de um cliente.
-- Objetivo: Atualizar o cadastro do Cliente 2 (Bruno Costa), adicionando um complemento.
UPDATE CLIENTE
SET Complemento = 'Apto 305'
WHERE ID_Cliente = 2;

-- --- Comandos DELETE ---

-- DELETE 1: Inserir e deletar um produto "teste".
-- Objetivo: Cadastrar um produto errado e removê-lo.
INSERT INTO PRODUTO (ID_Produto, Nome, Descricao, Tamanho, Preco) 
VALUES (99, 'Pizza Teste', 'Sabor de teste', 'Pequena', 10.00);

DELETE FROM PRODUTO
WHERE ID_Produto = 99;

-- DELETE 2: Inserir e deletar um cliente "teste" (que não tem pedidos).
-- Objetivo: Um cliente foi cadastrado por engano.
INSERT INTO CLIENTE (ID_Cliente, Nome, Telefone, Rua, Numero, Bairro) 
VALUES (99, 'Cliente Fantasma', '(11) 00000-0000', 'Rua Nula', '00', 'Teste');

DELETE FROM CLIENTE
WHERE ID_Cliente = 99;

-- DELETE 3: Deletar um pedido (ON DELETE CASCADE).
-- Objetivo: O cliente ligou e cancelou o Pedido 103.
DELETE FROM PEDIDO
WHERE ID_Pedido = 103;

-- Ao rodar este comando, os itens do Pedido 103 são deletados
-- automaticamente, devido à regra "ON DELETE CASCADE" definida no schema.