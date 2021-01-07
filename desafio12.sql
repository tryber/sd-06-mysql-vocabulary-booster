SELECT CONCAT(hr1.FIRST_NAME, ' ', hr1.LAST_NAME) AS 'Nome completo funcionário 1', hr1.SALARY AS 'Salário funcionário 1', hr1.PHONE_NUMBER AS 'Telefone funcionário 1', CONCAT(hr2.FIRST_NAME, ' ', hr2.LAST_NAME) AS 'Nome completo funcionário 2', hr2.SALARY AS 'Salário funcionário 2', hr2.PHONE_NUMBER AS 'Telefone funcionário 2' FROM hr.employees hr1, hr.employees hr2 WHERE hr1.JOB_ID = hr2.JOB_ID AND CONCAT(hr1.FIRST_NAME, ' ', hr1.LAST_NAME) <> CONCAT(hr2.FIRST_NAME, ' ', hr2.LAST_NAME) ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;