-- Faça um relatório que lista todas as pessoas funcionárias que possuem o mesmo cargo.
-- Use o banco hr como referência
-- Suponha que haja somente 03 pessoas funcionárias, João, Maria e Alex, e:
-- João e Maria possuem o mesmo cargo;
-- Alex não tem outra pessoa funcionária com o mesmo cargo.
-- Logo, podemos dizer que João tem uma pessoa funcionária associada, Maria, que possui o mesmo cargo. Também podemos dizer que Maria tem uma pessoa funcionária associada, João, que possui o mesmo cargo. Já Alex não tem outra pessoa funcionária associada com o mesmo cargo. Portanto, seu relatório deveria ter dois resultados, um indicando que Maria tem uma pessoa associada João que possui o mesmo cargo, e o outro resultado indicando que João tem uma pessoa associada Maria que possui o mesmo cargo.
-- Monte uma query que exiba 06 colunas:
-- A primeira deve possuir o alias "Nome completo funcionário 1" e exibir o nome completo da pessoa funcionária (não se esqueça do espaço entre o nome e o sobrenome).
-- A segunda deve possuir o alias "Salário funcionário 1" e exibir o salário dessa pessoa.
-- A terceira deve possuir o alias "Telefone funcionário 1" e exibir o número de telefone dessa pessoa.
-- A quarta deve possuir o alias "Nome completo funcionário 2" e exibir o nome completo da pessoa funcionária associada que possui o mesmo cargo (não se esqueça do espaço entre o nome e o sobrenome).
-- A quinta deve possuir o alias "Salário funcionário 2" e exibir o salário da pessoa funcionária associada que possui o mesmo cargo.
-- A sexta deve possuir o alias "Telefone funcionário 2" e exibir o número da pessoa funcionária associada que possui o mesmo cargo.
-- Os resultados devem estar ordenados pela coluna "Nome completo funcionário 1" em ordem alfabética.
-- Em caso de empate, os resultados devem ser ordenados pela coluna Nome completo funcionário 2" em ordem alfabética.
-- SELECT * FROM hr.employees;
SELECT
CONCAT(epy1.FIRST_NAME, ' ', epy1.LAST_NAME) AS `Nome completo funcionário 1`,
epy1.SALARY AS `Salário funcionário 1`,
epy1.PHONE_NUMBER AS `Telefone funcionário 1`,
CONCAT(epy2.FIRST_NAME, ' ', epy2.LAST_NAME) AS `Nome completo funcionário 2`,
epy2.SALARY AS `Salário funcionário 2`,
epy2.PHONE_NUMBER AS `Telefone funcionário 2`

FROM hr.employees AS epy1
JOIN hr.employees AS epy2
ON epy1.JOB_ID = epy2.JOB_ID
AND epy1.EMPLOYEE_ID <> epy2.EMPLOYEE_ID
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
