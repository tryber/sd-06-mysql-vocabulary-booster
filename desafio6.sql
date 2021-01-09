select concat(E.FIRST_NAME, ' ', E.LAST_NAME) as `Nome completo`,
J.JOB_TITLE as Cargo,
H.START_DATE as `Data de início do cargo`,
D.DEPARTMENT_NAME as `Departamento`
from hr.job_history as H
join hr.jobs as J on J.JOB_ID = H.JOB_ID
join hr.employees as E on E.EMPLOYEE_ID = H.EMPLOYEE_ID
join hr.departments as D on D.DEPARTMENT_ID = H.DEPARTMENT_ID
order by `Nome completo` desc, Cargo asc;
