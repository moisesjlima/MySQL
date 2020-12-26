SELECT * FROM cursos
ORDER BY nome ASC; /*DESC-> ordem Descendente; ASC-> ordem Ascendente*/

SELECT carga, ano, nome FROM cursos
ORDER BY ano; /*Filtrando colunas*/

SELECT nome, descricao, carga FROM cursos
WHERE ano='2016' /*Especificando uma Condição */
ORDER BY nome;

SELECT nome, descricao, ano FROM cursos
WHERE ano = 2017 /*Operadores Relacionais (condição)*/
ORDER BY ano, nome;
/*
----OPERADORES RELACIONAIS----
< Menor
> Maior
<= Menor igual
>= Maior igual
= Igual
!= OU <> Diferente*/

SELECT carga, nome, descricao, ano FROM cursos
WHERE carga = 40 AND ano IN(2017,2020)
ORDER BY carga;

SELECT nome, ano FROM cursos
WHERE ano BETWEEN '2014' AND '2016' /*Curso ONDE ano esta entre 2014 á 2016*/
ORDER BY ano DESC, nome asc;

SELECT nome, descricao, ano FROM cursos
WHERE ano in (2017, 2020) /*IN especificando valores a serem mostrados*/
ORDER BY ano;


SELECT nome, carga, totaulas FROM cursos
WHERE carga > 35 OR totaulas < 30;
/*
----OPERADORES LÓGICOS----
AND - Both true
OR - One true
*/
