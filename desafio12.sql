select concat(E1.FIRST_NAME, ' ', E1.LAST_NAME) AS `Nome completo funcionário 1`,
E1.SALARY AS `Salário funcionário 1`, E1.PHONE_NUMBER AS `Telefone funcionário 1`,
concat(E2.FIRST_NAME, ' ', E2.LAST_NAME) AS `Nome completo funcionário 2`,
E2.SALARY AS `Salário funcionaŕio 2`,
E2.PHONE_NUMBER AS `Telefone funcionário 2`
from hr.employees as E1, hr.employees as E2 
where E1.JOB_ID = E2.JOB_ID
and concat(E1.FIRST_NAME, ' ', E1.LAST_NAME) <> concat(E2.FIRST_NAME, ' ', E2.LAST_NAME)
order by `Nome completo funcionário 1` asc,
`Nome completo funcionário 2` asc;
