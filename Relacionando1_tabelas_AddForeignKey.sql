/*ENGINE -> Para criar tabelas que sejam compatíveis
			 com as chaves estrangeiras
             
-MyISAM -> Não suporta ACID
//Suportam transação(ACID)
-InnonDB
-XtraDB

Atomicidade - Tudo precisa ser preciso para funcionar tudo, 'ou tudo funciona ou nada é considerado'
Consistência - Os dados precisam estar consistente depois de armazenado
Isolamento - Transeferências simultânea não podem interferir uma na outra
Durabilidade - Os dados/registros armazenados precisam persistir/durar o tempo que for necessário 
*/

DESC gafanhotos; /*KEY(MUL) - chave multipla/Foreign key*/

ALTER TABLE gafanhotos
ADD COLUMN cursopreferido int;

ALTER TABLE gafanhotos ADD FOREIGN KEY(cursopreferido) /*Ligando tabela e adicionando a foreign key*/
REFERENCES cursos(idcurso);

SELECT * FROM gafanhotos;
SELECT * FROM cursos;

UPDATE gafanhotos SET cursopreferido = '6' WHERE id = '1'; 

/*Integridade Referencial*/
DELETE FROM curso WHERE idcurso='6'; /*Devido ao relacionamento das tabelas e relação do registro não será possível Apagar esse curso!!!*/
DELETE FROM curso WHERE idcurso ='28'; /*Curso/tupla sem relação com nenhum registro da tabela gafanhoto, sendo possível apagar*/