SELECT
  c1.ContactName as "Nome",
  c1.Country as "País",
  COUNT(c2.Country) - 1 as "Número de compatriotas"
FROM
  w3schools.customers as c1
  JOIN w3schools.customers as c2 ON c1.country = c2.country
GROUP BY
  c1.customerId
HAVING
  COUNT(c2.Country) - 1 <> 0
ORDER BY
  Nome ASC

