select * from gafanhotos;
/*Exercícios*/
/*1 - Lista com todas as Gafanhotas*/
SELECT * FROM gafanhotos WHERE sexo = "F" ORDER BY nome;

/*2 - Lista nascimentos entre 2000-01-01 e 2015-12-31 */
SELECT * FROM gafanhotos WHERE nascimento BETWEEN '2000-01-01' AND '2015-12-31' ORDER BY nascimento;

/*3 - Lista dos Homens que trabalha com programação */
SELECT * FROM gafanhotos where sexo = 'M' AND profissao = 'Programador';

/*4 - Lista Nomes das Mulheres Brasileiras que começa com a letra 'J%' */
SELECT * FROM gafanhotos WHERE sexo = 'F' AND nome LIKE 'j%';

/*5 -  Lista nome e nacionalidade, de todos os homens, sem 'silva', nao nasceram no Brasil, peso < 100 Kg*/
SELECT nome, nacionalidade FROM gafanhotos
WHERE sexo = 'M' AND nome NOT LIKE '%silva%' AND nacionalidade != 'Brasil' AND peso < 100;

/*6 - A maior altura entre os Homens*/
SELECT MAX(altura) FROM gafanhotos
WHERE sexo = 'M' AND nacionalidade = 'Brasil';

/*7 - A Média de peso dos gafanhotos cadastrados*/
SELECT AVG(peso) FROM gafanhotos;

/*8 - Menor peso entre mulheres que nasceram Fora do Brasil e está entre 1990-01-01 e 2000-31-12*/
SELECT MIN(peso) FROM gafanhotos WHERE sexo = 'F' AND nacionalidade != 'Brasil' AND nascimento BETWEEN '1990-01-01' AND '2000-12-31';

/*9 - Quantas mulheres tem mais de  1.90 de altura*/
SELECT COUNT(*) FROM gafanhotos
WHERE sexo = 'F' AND
altura > '1.90';



