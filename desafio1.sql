SELECT
COUNTRY_NAME AS 'País',
CASE
WHEN REGION_ID=1 THEN 'incluído'
ELSE 'não incluído'
END AS 'Status inclusão'
FROM hr.countries
ORDER BY COUNTRY_NAME;
