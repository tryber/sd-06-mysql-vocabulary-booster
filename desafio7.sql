select ucase(concat(E.FIRST_NAME, ' ', E.LAST_NAME)) as `Nome completo`,
H.START_DATE as `Data de início do cargo`,
E.SALARY as `Salário`
from hr.employees as E
join hr.job_history as H on E.EMPLOYEE_ID = H.EMPLOYEE_ID
where month(H.START_DATE) between 1 and 3
order by concat(E.FIRST_NAME, ' ', E.LAST_NAME) asc, H.START_DATE asc;
