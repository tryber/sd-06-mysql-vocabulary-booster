SELECT CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) 'Nome completo', 
date_format(JH.START_DATE, '%d/%m/%Y') 'Data de início', 
date_format(JH.END_DATE, '%d/%m/%Y') 'Data de rescisão',
ROUND((DATEDIFF(JH.END_DATE, JH.START_DATE)/365), 2) 'Anos trabalhados' 
FROM hr.job_history JH
INNER JOIN hr.employees E ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID ORDER BY `Nome completo`, `Anos trabalhados`;
