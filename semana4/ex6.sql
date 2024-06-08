-- Encontre o total de itens pedidos em cada mês.


SELECT data_pedido, SUM(quantidade) AS total_itens_pedidos
FROM (
    SELECT p.data_pedido, c.quantidade
    FROM itens_pedidos c
    LEFT JOIN pedidos p ON c.pedido_id = p.pedido_id
) AS subquery
GROUP BY data_pedido
UNION
SELECT data_pedido, 0 AS total_itens_pedidos
FROM (
    SELECT DISTINCT data_pedido
    FROM pedidos
) AS subquery2
WHERE data_pedido NOT IN (
    SELECT DISTINCT data_pedido
    FROM itens_pedidos
);


-- Liste os clientes que não têm pedidos associados.
SELECT c.nome, p.pedido_id, p.data_pedido, p.valor
FROM clientes c
LEFT JOIN pedidos p ON c.cliente_id = p.cliente_id
WHERE p.cliente_id IS NULL;


-- Encontre o pedido de maior valor.
SELECT pedido_id, valor
FROM pedidos
WHERE valor = (SELECT MAX(valor) FROM pedidos);

-- Encontre o total de itens pedidos para cada produto.

-- Calcule a soma dos valores dos pedidos para cada cliente que tenha feito mais de um pedido.

-- Encontre o preço médio dos produtos em cada categoria.

-- Encontre o cliente que fez o pedido de maior valor.