CREATE TABLE categorias (
    categoria_id SERIAL PRIMARY KEY;
    nome_categoria VARCHAR(50),
)

ALTER TABLE produtos ADD COLUMN categoria_id INT;

ALTER TABLE produtos 
ADD CONSTRAINT fk_categoria_id 
FOREIGN KEY (categoria_id) 
REFERENCES categorias(categoria_id);


DROP TABLE categorias;