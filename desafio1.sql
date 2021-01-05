SELECT DISTINCT
  C.COUNTRY_NAME AS 'País',
  CASE
    WHEN C.REGION_ID = 1 THEN 'incluído'
    ELSE 'não incluído'
  END AS 'Status Inclusão'
FROM
countries AS C,
regions AS R
ORDER BY COUNTRY_NAME;
