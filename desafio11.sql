SELECT
  customers1.ContactName AS Nome,
  customers1.Country AS País,
  customers2.Qtd - 1 AS 'Número de compatriotas'
FROM (
  SELECT Country, COUNT(Country) AS Qtd
  FROM w3schools.customers
  GROUP BY Country
) AS customers2
INNER JOIN
  w3schools.customers AS customers1 ON customers2.Country = customers1.Country
WHERE
  customers2.Qtd - 1 > 0 
ORDER BY
  Nome;
