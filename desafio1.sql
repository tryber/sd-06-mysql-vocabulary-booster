SELECT
COUNTRY_NAME AS 'País',
CASE
WHEN REGION_ID=1 THEN 'Incluído'
ELSE 'Não incluído'
END AS 'Status inclusão'
FROM hr.countries
ORDER BY COUNTRY_NAME;
