SELECT
  countries.COUNTRY_NAME AS 'País',
  IF(REGION_ID = 1, 'incluído', 'não incluído') AS 'Status Inclusão'
FROM
  hr.countries
ORDER BY
  countries.COUNTRY_NAME ASC;
