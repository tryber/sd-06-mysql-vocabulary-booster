SELECT J.JOB_TITLE AS "Cargo", J.MAX_SALARY - J.MIN_SALARY AS "Diferença entre salários máximo e mínimo"
FROM jobs AS J
ORDER BY (J.MAX_SALARY - J.MIN_SALARY), JOB_TITLE ASC;
