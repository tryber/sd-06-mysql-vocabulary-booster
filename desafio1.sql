SELECT country_name AS 'País',
IF (region_id = '1', 'incluído', 'não incluído')
As 'Status Inclusão'
FROM hr.countries
ORDER BY COUNTRY_NAME;