SELECT country_name AS 'País',
  IF(region_id = 1, 'incluído', 'não incluído') AS 'Status Inclusão'
FROM countries
WHERE region_id = 1
ORDER BY country_name ASC;
