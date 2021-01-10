SELECT
COUNTRY_NAME as País,
CASE
WHEN REGION_ID = 1 THEN 'incluído'
ELSE 'não incluído'
END AS `Status Inclusão`
FROM hr.countries
order by COUNTRY_NAME;
