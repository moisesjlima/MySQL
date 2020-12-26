/*GROUP BY - agrupamento e totalizar*/
USE cadastro;

SELECT * FROM cursos;

SELECT  totaulas, COUNT(*) FROM cursos GROUP BY totaulas;
 
SELECT carga, count(nome) FROM cursos WHERE totaulas = 30
GROUP BY carga;

SELECT ano, count(*) FROM cursos
WHERE totaulas > 30
GROUP By ano
HAVING ano >= 2013 /*Agrupar tendo...*/
ORDER BY COUNT(*) DESC;

SELECT AVG(carga) FROM cursos;

SELECT carga, count(*) FROM cursos /*Selecionar*/
WHERE ano > 2015 /*Filtrar*/
GROUP BY carga /*Agrupar*/
HAVING carga > (SELECT AVG(carga) FROM cursos); /* Mostra tendo(Estando acima da média)*/

