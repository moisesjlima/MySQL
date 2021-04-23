/* Retorna a data atual ('AAAA-MM--DD')*/
SELECT current_date(); 

/*Hora Atual*/
SELECT current_time();

/*representa um ponto específico na linha do tempo e leva em consideração o fuso horário em questão*/
SELECT current_timestamp();

/*Apresentam a hora atual, no formato-padrão e no formato timestamping, 
*/
SELECT LOCALTIME();
SELECT LOCALTIMESTAMP();

/*data e a hora correntes do banco de dados, equivalendo-se à função
current_timestamp.*/
SELECT now();

/*Funções Strings*/
/*LIKE e NOT LIKE*/
SELECT nome FROM gafanhotos WHERE nome LIKE '%Jorge%';
SELECT nome FROM gafanhotos WHERE nome LIKE '%Lim_';
SELECT nome FROM gafanhotos WHERE nome NOT LIKE '%A%';

/*Função REPEAT*/
SELECT REPEAT(nome , 2) FROM gafanhotos;

/*Função REPLACE*/
SELECT REPLACE('Bom dia à todos', 'a todos', 'para todos');

/*position - Apresentam um valor numérico referente à posição inicial do
texto pesquisado.*/
SELECT position('do' IN 'A maior riqueza do homem é o conhecimento');

/*Função trim retira das extremidades o caractere desejado*/
SELECT trim(leading '-' FROM '------A maior riqueza de um
homem é o conhecimento-------');

/*Função UPPER(M) e LOWER(m) */
SELECT lower(nome) FROM gafanhotos;
SELECT TO_CHARACTER(CURRENT_TIMESTAMP, 'DD-MM_YYYY');

-- Concatenação + + 
SELECT CONCAT('Nome: ',nome, ' PROFISSÂO:  ', profissao) AS `DADOS DO CLIENTE` FROM gafanhotos;
-- SINTAXE no SQLServer: SELECT 'Moisés' + 'Costa Lima'

-- Consulta Aninhada ou Subconsulta 
SELECT *  FROM gafanhotos WHERE (select count(cursopreferido) from gafanhotos) >=14;

-- Função Agregadas
SELECT * FROM gafanhotos WHERE altura > 2 GROUP BY nome ;
select count(*) from gafanhotos where cursopreferido is not null;
SELECT AVG(altura) FROM gafanhotos;


SELECT g.nome, c.nome, c.carga, c.idcurso FROM cursos AS c, gafanhotos AS g WHERE g.cursopreferido = c.idcurso;

SELECT g.*, c.nome FROM gafanhotos AS g INNER JOIN cursos AS c
ON g.id = c.idcurso WHERE nacionalidade IN ('brasil', 'Irlanda');













