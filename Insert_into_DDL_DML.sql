/*Comandos DDL -> Data Definition Language: Para definir Dados*/

/*DML -> Data Manipulation Language: Para manipular Dados*/
INSERT INTO gafanhotos /*Inserindo Dados na Tabela*/
VALUES
(DEFAULT, 'Ana', '1940-11-02', 'F', '70.2', '1.85', 'EUA'),
(DEFAULT, 'Pedro', '1980-05-02', 'M', '81.2', '1.75', DEFAULT),
(DEFAULT, 'Creuza', '1950-06-02', 'F', '55.2', '1.65', 'Brasil'),
(DEFAULT, 'Maria', '1980-02-02', 'F', '59.2', '1.70', 'Brasil'),
(DEFAULT, 'Camila', '1998-02-17', 'F', '60.2', '1.71', 'Inglaterra'),
(DEFAULT, 'Douglas', '2000-06-02', 'M', '71.2', '1.76', 'Brasil'),
(DEFAULT, 'Jorge', '1999-06-09', 'M', '70.2', '1.71', 'Brasil');

select * from pessoas; 