/*Trabalhando com junções de tabelas*/
SELECT nome, cursopreferido FROM gafanhotos;
SELECT nome,ano FROM cursos;

/*INNER JOIN - (Interior)Somente quais informações tem ligaçoes entre elas*/
SELECT gafanhotos.nome, cursos.nome, cursos.ano
FROM gafanhotos JOIN cursos
ON cursos.idcurso = gafanhotos.cursopreferido
ORDER BY gafanhotos.nome; /*JOIN... ON Juntar chave primária na estrangeira*/

/*APELIDO PARA AS TABELAS*/
SELECT g.nome, c.nome, c.ano 
FROM gafanhotos as g INNER JOIN cursos as c /*Apelido para gafanhoto(as g) e curso(as c)*/
ON c.idcurso = g.cursopreferido 
ORDER BY g.nome;


/*OUTER JOIN - (Exterior)As informações ligadas e todas as outras */
SELECT g.nome, c.nome, c.ano 
FROM gafanhotos as g RIGHT OUTER JOIN cursos as c /*Apelido para gafanhoto(as g) e curso(as c)*/
ON c.idcurso = g.cursopreferido;








