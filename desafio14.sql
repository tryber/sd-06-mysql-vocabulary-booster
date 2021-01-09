SELECT DISTINCT A.Country AS `País`
FROM (
SELECT Country FROM w3schools.customers
UNION ALL
SELECT Country FROM w3schools.suppliers
) AS A
LIMIT 5;
