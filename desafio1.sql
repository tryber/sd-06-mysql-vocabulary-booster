SELECT country_name AS "País",
  IF(region_id = 1, "Incluído", NULL) AS "Status Inclusão"
FROM countries
WHERE region_id = 1;
