SELECT * FROM gafanhotos
WHERE nome LIKE '%silva%';

/*Mostrar DISTINTIVAMENTE os (Registros/Tuplas/Campos)/Sem repetição*/
SELECT DISTINCT carga FROM cursos 
ORDER BY carga DESC; 

/*Funções de Agregação - Serve para Selecionar ou Totalizar/contar algo*/
SELECT count(*) FROM cursos ; /*Contanto o total de registros*/
SELECT count(*) FROM cursos WHERE carga > 40;

SELECT MAX(carga) FROM cursos; /*MAX() - Maior número entre os registros*/
SELECT MAX(totaulas) FROM cursos WHERE ano = '2016';

SELECT MIN(totaulas) FROM cursos WHERE ano = '2016';/*MIN() - Menor*/

SELECT SUM(totaulas) FROM cursos WHERE ano = '2016'; /*SUM() - Soma o total()*/

SELECT AVG(totaulas) FROM cursos WHERE ano = '2016'/*AVG - AVERAGE = MÉDIA ARITMÉTICA*/ 







