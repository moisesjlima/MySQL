CREATE TABLE categories(
categoria_id SERIAL PRIMARY KEY,
categoria_nome VARCHAR (255) NOT NULL
);

CREATE TABLE produtos (
produto_id SERIAL PRIMARY KEY,
produto_nome VARCHAR (255) NOT NULL,
categoria_id INT NOT NULL,
FOREIGN KEY (categoria_id) REFERENCES categories (categoria_id)
);

INSERT INTO categories (categoria_nome)
VALUES
('Celular'),
('Notebook'),
('Tablet');

INSERT INTO produtos (produto_nome, categoria_id)
VALUES
('iphone', '1'),
('Dell Inspiron', '2'),
('Ipad', '3'),
('Acer Aspire', '2'),
('Samsung A30', '1'),
('Galaxy Tab', '3');

SELECT c.categoria_nome, p.produto_nome FROM produtos AS p JOIN categories AS c USING(categoria_id) WHERE c.categoria_nome LIKE '_ab_e_';
