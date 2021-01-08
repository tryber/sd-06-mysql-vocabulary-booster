SELECT c1.ContactName AS 'Nome',
    c1.Country AS 'País',
    COUNT(c1.Country) - 1 AS 'Número de compatriotas'
FROM customers AS c1
    JOIN customers AS c2
        ON c1.Country = c2.Country
GROUP BY c1.ContactName, c1.Country
HAVING COUNT(c1.Country) - 1 > 0
ORDER BY c1.ContactName;
