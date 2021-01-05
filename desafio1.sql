SELECT co.COUNTRY_NAME AS País,
IF(re.REGION_NAME = 'Europe', 'incluído', 'não incluído') AS 'Status Inclusão'
FROM hr.countries AS co
INNER JOIN hr.regions as re
ON co.REGION_IDOUNTRY_NAM = re.REGION_ID
ORDER BY País;
