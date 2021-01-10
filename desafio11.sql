SELECT 
    A.ContactName AS 'Nome',
    A.Country AS 'País',
    COUNT(A.Country) AS 'Número de compatriotas'
FROM
    w3schools.customers AS A,
    w3schools.customers AS B
WHERE
    A.Country = B.Country
        AND A.ContactName <> B.ContactName
GROUP BY A.ContactName , A.Country
ORDER BY `Nome`;
