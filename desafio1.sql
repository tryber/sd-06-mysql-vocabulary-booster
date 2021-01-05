SELECT COUNTRY_NAME AS 'Pais',
IF(REGION_ID = 1, 'incluído', 'não não incluído') AS 'Status Inclusão'
FROM hr.countries
GROUP BY COUNTRY_NAME ORDER BY COUNTRY_NAME ASC;
