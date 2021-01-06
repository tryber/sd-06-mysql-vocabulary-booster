SELECT
ContactName AS Nome,
Country AS 'País',
(
SELECT Count(*) - 1
FROM w3schools.customers 
WHERE Country = c.Country
) AS 'Número de compatrioras' 
FROM w3schools.customers AS c
WHERE (
SELECT Count(*) - 1
FROM w3schools.customers 
WHERE Country = c.Country
) > 0
ORDER BY Nome;
