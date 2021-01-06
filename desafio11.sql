SELECT  
  c1.ContactName AS `Nome`,
  c1.Country AS `País`,
  (SELECT COUNT(c2.Country)-1
    FROM w3schools.customers AS c2
    WHERE c1.Country = c2.Country) AS `Número de compatriotas`
FROM w3schools.customers AS c1
GROUP BY `Nome`, `País`
HAVING `Número de compatriotas` > 0
ORDER BY `Nome`;
