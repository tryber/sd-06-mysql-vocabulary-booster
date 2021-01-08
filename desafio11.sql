SELECT t1.Nome,
t1.País,
(t1.compatriotas - 1) AS `Número de compatriotas`
FROM (SELECT ContactName AS Nome,
Country AS País,
(SELECT COUNT(Country) FROM w3schools.customers AS b WHERE b.Country = a.Country) AS compatriotas
FROM w3schools.customers AS a) AS t1
WHERE t1.compatriotas > 1
ORDER BY t1.Nome;
