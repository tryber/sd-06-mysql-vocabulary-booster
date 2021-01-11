-- Crie uma procedure chamada buscar_media_por_cargo que recebe como parâmetro o nome de um cargo e em retorno deve mostrar a média salarial de todas as pessoas que possuem esse cargo.
-- Sua procedure deve retornar somente 01 coluna com o alias "Média salarial", que mostra a média salarial arredondada para duas casas decimais.
-- Use o banco hr como referência
-- Confirme a execução correta da procedure chamando-a e passando o nome de cargo igual a "Programmer":
-- CALL buscar_media_por_cargo('Programmer');
-- Chamando-a dessa forma, sua procedure deve retornar 5760.00 como média salarial para pessoas que ocupam o cargo "Programmer".
-- SELECT * FROM hr.employees;
-- SELECT * FROM hr.jobs;
USE hr;
DROP PROCEDURE IF EXISTS buscar_media_por_cargo;

DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo varchar(25))
BEGIN
SELECT ROUND(AVG(epy.SALARY), 2) AS 'Média salarial'
FROM employees AS epy
INNER JOIN jobs AS jb
ON jb.JOB_ID = epy.JOB_ID
WHERE jb.JOB_TITLE = cargo;
END $$
DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
