SELECT C.COUNTRY_NAME AS 'País', IF(R.REGION_NAME = 'Europe', 'incluído', 'não incluído') as 'Status Inclusão'
FROM hr.countries as C
INNER JOIN hr.regions AS R
ON C.REGION_ID = R.REGION_ID;
