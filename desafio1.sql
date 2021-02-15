SELECT COUNTRY_NAME AS 'País',
IF(R.REGION_NAME IN('Europe'), 'incluído', 'não incluído') AS 'Status Inclusão'
FROM hr.countries C
LEFT JOIN hr.regions R
ON C.REGION_ID = R.REGION_ID
ORDER BY `País`;
