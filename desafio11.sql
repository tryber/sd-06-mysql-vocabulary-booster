SELECT 
    c.ContactName AS `Nome`,
    c.Country AS `País`,
    s.`Número de compatriotas`
FROM
    w3schools.customers AS c
        INNER JOIN
    (SELECT 
        Country, (COUNT(Country) - 1) AS `Número de compatriotas`
    FROM
        w3schools.customers
    GROUP BY Country) AS s ON s.Country = c.Country
HAVING `Número de compatriotas` > 2
ORDER BY `Nome`;
