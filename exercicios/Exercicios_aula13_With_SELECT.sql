/*1- Lista com profissões da tabela Gafanhoto e seus respectivos quantitativos*/
SELECT profissao, COUNT(*) FROM gafanhotos 
GROUP BY profissao ASC;

SELECT profissao FROM gafanhotos;

/* 2- Quantos gafanhotos homens e mulheres nasceram após 01/jan/2005 ? */
SELECT sexo, COUNT(*) FROM gafanhotos WHERE nascimento > '2005-01-01';

/*3- Lista Gafanhotos que nasceram fora do Brasil, pais de origem e total, somente paises que tiveram mais de 3 gafanhotos*/

SELECT nacionalidade, count(*) FROM gafanhotos
WHERE nacionalidade != 'Brasil'
GROUP BY nacionalidade
HAVING COUNT(nacionalidade) > 3;

/*4- Lista Agrupada pela altura, Mostrando pessoas que pesam mais de 100kg, e esta acima da média de altura de todos*/
SELECT AVG(altura) FROM gafanhotos;

SELECT peso, altura ,COUNT(*) FROM gafanhotos
WHERE peso > '100'
GROUP BY altura HAVING altura > (SELECT AVG(altura) FROM gafanhotos);

SELECT altura, peso, COUNT(*) FROM gafanhotos
WHERE peso > '100' AND altura > (SELECT AVG(altura) FROM gafanhotos)
GROUP BY altura;


