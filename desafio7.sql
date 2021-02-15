SELECT UCASE(CONCAT(E.FIRST_NAME, " ", E.LAST_NAME)) AS `Nome completo`,
  JH.START_DATE AS `Data de início`,
  E.SALARY AS "Salário"
FROM hr.employees AS E
INNER JOIN hr.job_history AS JH ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
WHERE MONTH(JH.START_DATE) BETWEEN 01 AND 03
ORDER BY `Nome completo`, `Data de início`;

/* Não compreendo porque o teste não reconhece a query usando o operador IN.
Mesmo que ela traga exatamente os mesmos resultados que o BETWEEN. Li sobre
os dois e não vi a diferenca de aplicacao nos dois casos. */
