SELECT
    COUNTRY_NAME as País,
    CASE
        WHEN REGION_ID = 1 THEN 'incluido'
        ELSE 'não incluido'
    END AS `Status Inclusão`
FROM hr.countries
ORDER BY COUNTRY_NAME;
