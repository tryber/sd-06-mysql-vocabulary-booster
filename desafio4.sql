select JOB_TITLE as Cargo, MAX_SALARY, MIN_SALARY,
round(((MAX_SALARY-MIN_SALARY)/2), 2) as `Média salarial`,
case 
when round(((MAX_SALARY-MIN_SALARY)/2), 2) between 2000 and 5800 then 'Júnior'
when round(((MAX_SALARY-MIN_SALARY)/2), 2) between 5801 and 7500 then 'Pleno'
when round(((MAX_SALARY-MIN_SALARY)/2), 2) between 7501 and 10500 then 'Sênior'
when round(((MAX_SALARY-MIN_SALARY)/2), 2) > 10500 then 'CEO'
end as 'Senioridade'
from hr.jobs
order by `Média salarial`, Cargo;
