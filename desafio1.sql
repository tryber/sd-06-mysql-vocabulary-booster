--desafio1.sql
SELECT COUNTRY_NAME AS `País`,
CASE WHEN REGION_ID=1 THEN 'incluso'
ELSE 'não incluído'
END AS `STATUS INCLUSÃO`
FROM hr.countries;
