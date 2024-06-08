INSERT INTO clientes (nome, cidade, idade) VALUES
('Lucas Lima', 'Salvador', 29)

UPDATE clientes SET cidade = 'Fortaleza' where cliente_id = 3;

DELETE FROM pedidos WHERE valor < 150.00;