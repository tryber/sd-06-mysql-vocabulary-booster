SELECT
  t_countries.COUNTRY_NAME AS `País`,
  IF(
    t_regions.REGION_NAME = "Europe", 
    "incluído", "não incluído"
  ) AS `Status Inclusão`
FROM
  hr.countries AS t_countries
  LEFT JOIN hr.regions AS t_regions ON t_countries.REGION_ID = t_regions.REGION_ID
ORDER BY
  t_countries.COUNTRY_NAME ASC;
