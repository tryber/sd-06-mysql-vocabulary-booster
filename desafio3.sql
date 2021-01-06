SELECT JOB_TITLE AS 'Cargo', (MIN_SALARY - MAX_SALARY) * -1
AS 'Diferença entre salários máximo e mínimo' FROM hr.jobs ORDER BY  MAX_SALARY - MIN_SALARY, JOB_TITLE;