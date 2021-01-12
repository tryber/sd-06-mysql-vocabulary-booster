SELECT *
FROM (SELECT DISTINCT Country AS 'País'
FROM w3schools.customers
UNION
SELECT DISTINCT Country AS 'País'
FROM w3schools.suppliers) AS C
ORDER BY C.País
LIMIT 5;
