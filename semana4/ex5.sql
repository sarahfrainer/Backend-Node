-- Liste todos os pedidos junto com as informações dos clientes, usando um INNER JOIN.

SELECT c.pedido_id, p.cliente_id, p.nome, p.cidade, p.idade
FROM pedidos c
INNER JOIN clientes p ON c.cliente_id = p.cliente_id;


-- Faça uma consulta que retorna todos os clientes e seus pedidos, incluindo clientes que não fizeram pedidos (use LEFT JOIN).

SELECT c.nome, p.pedido_id, p.data_pedido, p.valor
FROM clientes c
LEFT JOIN pedidos p ON c.cliente_id = p.cliente_id;


-- Faça uma consulta que retorna todos os produtos e seus itens pedidos, incluindo produtos que não foram pedidos (use RIGHT JOIN).

SELECT c.nome_produto, p.item_id, p.pedido_id, p.produto_id, quantidade
FROM produtos c
RIGHT JOIN itens_pedidos p ON c.produto_id = p.produto_id;


--Utilize UNION para combinar duas consultas: uma que retorna clientes de 'São Paulo' e outra que retorna clientes de 'Rio de Janeiro'.
SELECT * FROM clientes WHERE cidade IN ('São Paulo')
UNION
SELECT * FROM clientes WHERE cidade IN ('Rio de Janeiro');