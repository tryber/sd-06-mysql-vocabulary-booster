-- USE hr.jobs; -- obrigatório para criar a procedure no banco correto
-- DELIMITER $$ -- definindo delimitador
-- CREATE PROCEDURE buscar_media_por_cargo(@JOB_TITLE) -- parâmetros
-- BEGIN -- delimitando o início do código SQL

-- JOB_TITLE AS 'Cargo',
-- ROUND(AVG(SALARY), 2) AS 'Média salarial',

-- END $$ -- delimitando o final do código SQL
-- DELIMITER ; -- muda o delimitador de volta para ; - o espaço entre
-- DELIMITER e o ';' é necessário
