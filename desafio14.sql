(SELECT DISTINCT COUNTRY AS `País` FROM w3schools.customers )
UNION
(SELECT DISTINCT COUNTRY AS `País` FROM w3schools.suppliers)
ORDER BY `País`
LIMIT 5;
