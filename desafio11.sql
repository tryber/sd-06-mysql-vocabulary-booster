SELECT
  C.ContactName AS 'Nome',
  C.Country AS 'País',
  COUNT(C2.Country) AS 'Número de compatriotas'
FROM w3schools.customers C, w3schools.customers C2
WHERE C.Country = C2.Country
AND C.ContactName <> C2.ContactName
GROUP BY C.CustomerID
ORDER BY C.ContactName;
