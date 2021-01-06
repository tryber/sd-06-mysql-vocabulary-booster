SELECT
T1.ContactName AS "Nome",
T1.Country AS "País",
Count(T2.Country) - 1  AS "Número de compatriotas"
FROM w3schools.customers T1, w3schools.customers T2
WHERE T1.Country = T2.Country
-- AND Count(T2.Country) - 1 <> 0
GROUP BY T1.Country, T1.ContactName
ORDER BY `Nome`;
