SELECT country.country_name AS 'País',
IF(country.region_id = region.region_id, 'incluído', 'não incluído') AS 'Status Inclusão'
FROM
countries AS country,
regions AS region
WHERE region.region_name = 'Europe';