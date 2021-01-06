SELECT 
    table1.ContactName AS 'Nome',
    table1.Country AS 'País',
    COUNT(table2.Country) - 1 AS 'Número de compatriotas'
FROM
    w3schools.customers AS table1
        INNER JOIN
    w3schools.customers AS table2 ON table1.Country = table2.Country
GROUP BY `País` , `Nome`
HAVING `Número de compatriotas` > 0
ORDER BY table1.ContactName;
