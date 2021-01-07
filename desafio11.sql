SELECT c1.ContactName AS 'Nome',
c1.Country AS 'País',
(COUNT(*) - 1) AS 'Número de compatriotas'
FROM w3schools.customers AS c1, w3schools.customers AS c2
WHERE c1.Country = c2.Country
GROUP BY Nome, País
HAVING (COUNT(*) - 1) > 0
ORDER BY Nome;
