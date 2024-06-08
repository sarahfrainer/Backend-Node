SELECT * FROM clientes WHERE nome LIKE 'A%';

SELECT cliente_id, COUNT(*) AS total_pedidos
FROM pedidos
GROUP BY cliente_id;

SELECT cidade, AVG(idade) AS media_idade
FROM clientes 
GROUP BY cidade;