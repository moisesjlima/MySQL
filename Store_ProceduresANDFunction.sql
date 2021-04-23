/* SAVEPOINT e ROLLBACK TO, que atuam como pontos de
marcação dentro das transações. Assim, você consegue retornar a esses pontos
específicos caso determinadas situações de erros sejam tratadas */

CREATE FUNCTION pot(a INT,b INT) RETURNS REAL RETURN
pow(a,b); 

SELECT pot(2,5);

DROP FUNCTION pot;

/*
CREATE [OR REPLACE] FUNCTION
nome _ da _ função( [ [modo _ do _ argumento] [nome _ do _ argumento] tipo _ do _ argumento [,...] ])
RETURNS tipo _ de _ retorno AS $$
DECLARE
 -- Bloco de declarações das variáveis que serão utilizadas
BEGIN
 -- Corpo da função
 [RETURN variável;]
END;
$$ LANGUAGE nome _ da _ linguagem;
O comando CREATE é utilizado para criar uma function e o CREATE OR
REPLACE, além de criar uma nova function, poderá substituir uma existente.
Depois, você deve indicar o nome_da_função, seguido de seu argumento
ou argumentos entre parênteses. Para o argumento, você deve especificar
o modo_do_argumento: IN (se omitido, é definido como padrão), OUT
(não pode alterar os tipos dos parâmetros) e INOUT (o parâmetro recebe
um valor e retorna outro). Em seguida ao nome_do_argumento, está o
tipo_do_argumento. */

/*Uma function no PostgreSQL pode retornar vários tipos de variáveis, como integer,
float, numeric etc., além de uma tabela ou apenas uma coluna. Ainda, pode retornar
um conjunto de itens em vez de um único item: para isso, basta utilizar o modificador
SETOF para indicar que a function retorna um conjunto de itens
 EX: 
 
DELIMITER $$
CREATE function retorna(texto VARCHAR(30))
RETURNS CHAR(50)
RETURN concat('Olá ',texto,' Tudo bem?')
$$
SELECT retorna('Moises');

Chamar função: 
SELECT nome _ da _ função(argumentos);


Chamar Stored Procedure
CALL nome _ do _ procedimento(argumentos); 
	*Normalmente, utilizamos um stored procedure com o objetivo de
	realizar transações completas

Excluir:
DROP FUNCTION nome _ da _ função;
DROP PROCEDURE nome _ do _ procedimento;

DELIMITER $$
CREATE FUNCTION acento(texto VARCHAR(30))
RETURNS CHAR(50)
BEGIN
SET texto = REPLACE(texto, 'ã', 'a'),
	texto = REPLACE(texto, 'é', 'e'),
	texto = REPLACE(texto, '1', '10'),
    texto = REPLACE(texto, 'S', 's');
RETURN texto;
END;
$$

DELIMITER $$
CREATE PROCEDURE inserir(idEstado INT, sigla VARCHAR(2), nome VARCHAR(50)) 
BEGIN
INSERT INTO tblestados(idEstado, sigla, nome) 
VALUES (idEstado, sigla, nome);
END;
$$

CALL inserir('4', 'BH', 'Belo Horizonte');

DELIMITER $$
CREATE PROCEDURE maior(valor INT, tbl VARCHAR(30)) 
BEGIN
 SELECT MAX(valor) FROM tbl;
END;
$$
*/







