/*Inserindo e Atualizando dados*/

INSERT INTO cursos VALUES
('1', 'HTML5', 'Curso de HTML5', '40', '37', '2014'),
('2', 'Algoritmo', 'Lógica de Programação', '20', '15', '2014'),
('3', 'Photoshop', 'Dicas de Photoshop CC', '10', '8', '2010'),
('4', 'PHP', 'Curso de PHP para iniciantes', '40', '20', '2015'),
('5', 'Java', 'Introdução á linguagem Java', '10', '29', '2000'),
('6', 'MySQL', 'Banco de Dados MySQL', '30', '15', '2016'),
('7', 'Word', 'Curso completo de Word', '40', '30', '2016');

UPDATE cursos
SET nome = "HTML5"
WHERE idcurso = '1';

UPDATE cursos /*UPDATE - Atualiza o banco..*/
SET nome = 'Java', carga = '40', ano = '2015' /*SET - Configure..*/
WHERE idcurso = '5' /*WHERE	onde x = 'tal registro' */
LIMIT 1;   /*Limita x linhas a serem afetadas*/

UPDATE cursos
SET ano ='2018', carga = '0'
WHERE ano = '2015'
LIMIT 1;

DESC cursos;
SELECT * FROM cursos;