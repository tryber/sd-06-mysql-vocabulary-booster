SELECT t1.ContactName AS "Nome",
t1.Country AS "País",
(SELECT COUNT(Country) -1 
FROM w3schools.customers
WHERE  t1.Country = Country
GROUP BY Country) AS "Número de compatriotas"
FROM w3schools.customers AS t1
ORDER BY Nome
