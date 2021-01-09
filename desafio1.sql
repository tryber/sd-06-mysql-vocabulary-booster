SELECT country_name AS "País",
CASE region_id
WHEN 1 THEN 'incluído'
ELSE 'não incluído'
END AS 'Status Inclusão'
FROM countries
ORDER BY country_name;
