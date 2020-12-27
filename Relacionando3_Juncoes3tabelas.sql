/*Relacionando Tabelas Cardinalidade (0,n) (0,n)*/
CREATE TABLE gafanhoto_assiste_curso( /*Criando tabela do relacionamento entre gafanhotos e cursos*/
id INT NOT NULL AUTO_INCREMENT,
data DATE,
idgafanhotos INT,
idcursos INT,
PRIMARY KEY (id),
FOREIGN KEY(idgafanhotos) REFERENCES gafanhoto(id), /*Trazendo a foreign key da tabela gafanhoto*/
FOREIGN KEY(idcursos) REFERENCES cursos(idcurso)	/*Trazendo a foreign key da tabela cursos*/
) DEFAULT CHARACTER SET = utf8;

SELECT * FROM gafanhoto_assiste_curso;

INSERT INTO gafanhoto_assiste_curso
VALUES
(DEFAULT, '2014-03-01', '1','2');

/*Junções*/

SELECT g.nome, a.idgafanhotos, idcursos FROM gafanhotos g /*JOIN entre tabela gafanhotos e gafanhoto_assiste_curso*/
JOIN gafanhoto_assiste_curso a
ON g.id = a.idgafanhotos ORDER BY g.nome;

SELECT g.nome, c.idcurso FROM gafanhotos g /*JOIN entre tabela gafanhotos e gafanhoto_assiste_curso*/
JOIN gafanhoto_assiste_curso a
ON g.id = a.idgafanhoto
JOIN cursos c
ON c.idcurso = a.idcursos;

SELECT g.nome, c.nome FROM gafanhotos as g
JOIN gafanhoto_assiste_curso as a
ON g.id = a.idgafanhotos
JOIN cursos as c
ON c.idcurso = a.idcursos
ORDER BY g.nome;




