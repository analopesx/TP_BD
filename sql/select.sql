-- =====================================
-- RELATÓRIOS
-- =====================================

SELECT
    p.id_pedido,
    c.nome AS cliente,
    p.data_pedido,
    p.status_pedido
FROM Pedido p
JOIN Cliente c
ON p.id_cliente = c.id_cliente;

SELECT
    ip.id_pedido,
    pr.nome AS produto,
    ip.quantidade
FROM Item_Pedido ip
JOIN Produto pr
ON ip.id_produto = pr.id_produto;

SELECT
    e.id_entrega,
    ent.nome AS entregador,
    e.status_entrega
FROM Entrega e
JOIN Entregador ent
ON e.id_entregador = ent.id_entregador;

SELECT *
FROM Produto
WHERE preco =
(
    SELECT MAX(preco)
    FROM Produto
);

SELECT *
FROM Cliente
WHERE id_cliente =
(
    SELECT id_cliente
    FROM Pedido
    GROUP BY id_cliente
    ORDER BY COUNT(*) DESC
    LIMIT 1
);

SELECT *
FROM Entregador
WHERE id_entregador =
(
    SELECT id_entregador
    FROM Entrega
    GROUP BY id_entregador
    ORDER BY COUNT(*) DESC
    LIMIT 1
);

SELECT
    id_cliente,
    COUNT(*) AS total_pedidos
FROM Pedido
GROUP BY id_cliente;

SELECT
    id_entregador,
    COUNT(*) AS total_entregas
FROM Entrega
GROUP BY id_entregador;

SELECT *
FROM Produto
ORDER BY preco DESC;

SELECT COUNT(*) AS total_pedidos
FROM Pedido;

SELECT AVG(preco) AS preco_medio
FROM Produto;

SELECT MAX(preco) AS maior_preco
FROM Produto;

SELECT MIN(preco) AS menor_preco
FROM Produto;

SELECT SUM(preco) AS soma_precos
FROM Produto;