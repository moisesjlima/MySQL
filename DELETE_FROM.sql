/*Removendo Linhas/Tuplas/Registros*/
DELETE FROM cursos
WHERE ano='2050'
limit 2;

INSERT INTO cursos VALUES
('10', 'Cavaco', 'iniciantes', '100', '14', 2016);

DELETE FROM cursos
WHERE idcurso='10';

SELECT * FROM cursos;
