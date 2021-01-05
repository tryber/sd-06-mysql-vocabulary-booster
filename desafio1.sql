SELECT
COUNTRY_NAME AS "País",
IF(REGION_NAME = 1, "incluído", "não incluído") AS "Status Inclusão"
FROM hr.countries;
