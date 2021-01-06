SELECT Ca.ContactName AS `Nome`,
Ca.Country AS `País`,
(SELECT COUNT(Cb.Country)
FROM w3schools.customers AS Cb
WHERE Cb.Country = Ca.Country
) - 1 AS `Número de compatriotas`
FROM w3schools.customers AS Ca
WHERE (SELECT COUNT(Cb.Country)
FROM w3schools.customers AS Cb
WHERE Cb.Country = Ca.Country
) - 1 > 0
ORDER BY `Nome`;
