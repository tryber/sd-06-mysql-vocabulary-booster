SELECT COUNTRY_NAME AS "País",
IF(COUNTRY_NAME = 1, "incluído", "não incluído") AS "Status Inclusão"
FROM hr.countries;
ORDER BY COUNTRY_NAME;
