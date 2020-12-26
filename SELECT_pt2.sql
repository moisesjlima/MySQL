SELECT * FROM cursos
WHERE nome LIKE 'p%'; /*% - Wildcard - Carta Coringa (Todo registro que comece com ...)*/
/*
Operadores Literais: 
BETWEEN - Entre,
IN em(especificar),
LIKE - Parecido
% - Caractere Coringa que substitui nenhum ou vários caracteres 
*/
SELECT * FROM cursos
WHERE nome LIKE '%a'; /*% no final - Seleciona todo registro com letra A no final*/

SELECT * FROM cursos
WHERE nome LIKE '%a%'; /*Registro que tenha 'A' em qualquer posição*/

SELECT * FROM cursos	/*NOT - Negação/Oposto*/
WHERE nome NOT LIKE '%a%';/*Mostra os nomes que nao possuem 'A'*/

SELECT * FROM cursos
WHERE nome LIKE 'ph%p%';

SELECT * FROM cursos
WHERE nome LIKE 'ph%p_';


