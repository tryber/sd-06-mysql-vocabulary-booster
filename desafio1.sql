SELECT c.COUNTRY_NAME AS 'País',
  IF(r.REGION_NAME = 'Europe', 'incluído', 'não incluido') AS 'Status Inclusão'
FROM hr.countries AS c
  LEFT JOIN hr.regions AS r
    ON c.REGION_ID = r.REGION_ID;
