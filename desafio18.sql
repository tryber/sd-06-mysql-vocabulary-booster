SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
DATE_FORMAT(jh.start_date, '%d/%m/%Y') AS 'Data de início',
DATE_FORMAT(jh.end_date, '%d/%m/%Y') AS 'Data de rescisão',
ROUND((DATEDIFF(jh.end_date, jh.start_date)/365), 2) AS 'Anos trabalhados'
FROM job_history AS jh
LEFT JOIN employees AS em
ON jh.employee_id = em.employee_id
WHERE CONCAT(em.first_name, ' ', em.last_name) IS NOT NULL
ORDER BY CONCAT(em.first_name, ' ', em.last_name), ROUND((DATEDIFF(jh.end_date, jh.start_date)/365), 2) ASC;
