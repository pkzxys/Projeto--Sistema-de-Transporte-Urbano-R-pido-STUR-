-- -----------------------------------------------------
-- Script de Consultas (SELECT)
-- -----------------------------------------------------
USE pizzaria_db;

-- Consulta 1: Simples com WHERE
-- Objetivo: Ver todos os produtos que custam mais de R$ 40,00.
SELECT * FROM PRODUTO 
WHERE Preco > 40.00;

-- Consulta 2: Média com GROUP BY
-- Objetivo: Ver o valor médio gasto por pedido, por cliente.
SELECT 
    FK_ID_Cliente, 
    AVG(Valor_Total) AS Media_Gasto_Por_Pedido
FROM PEDIDO
GROUP BY FK_ID_Cliente;

-- Consulta 3: JOIN 
-- Objetivo: Ver os detalhes de um pedido específico (Pedido 102),
-- mostrando o nome do cliente e o nome dos produtos.
SELECT 
    p.ID_Pedido,
    c.Nome AS Cliente,
    pr.Nome AS Produto,
    ip.Quantidade,
    ip.Preco_Unitario
FROM PEDIDO p
JOIN CLIENTE c ON p.FK_ID_Cliente = c.ID_Cliente
JOIN ITEM_PEDIDO ip ON p.ID_Pedido = ip.FK_ID_Pedido
JOIN PRODUTO pr ON ip.FK_ID_Produto = pr.ID_Produto
WHERE p.ID_Pedido = 102;

-- Consulta 4: JOIN com COUNT e ORDER BY
-- Objetivo: Listar quais clientes fizeram mais pedidos (ranking de clientes).
SELECT 
    c.Nome,
    COUNT(p.ID_Pedido) AS Total_Pedidos
FROM CLIENTE c
JOIN PEDIDO p ON c.ID_Cliente = p.FK_ID_Cliente
GROUP BY c.Nome
ORDER BY Total_Pedidos DESC;

-- Consulta 5: JOIN com SUM e GROUP BY
-- Objetivo: Ver quais produtos são os mais vendidos (em quantidade).
SELECT 
    pr.Nome,
    SUM(ip.Quantidade) AS Total_Vendido
FROM PRODUTO pr
JOIN ITEM_PEDIDO ip ON pr.ID_Produto = ip.FK_ID_Produto
GROUP BY pr.Nome
ORDER BY Total_Vendido DESC
LIMIT 3; -- Mostra o TOP 3