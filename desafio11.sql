SELECT t_customers.ContactName AS Nome,
t_customers.Country AS País,
t_total_habitantes.Quantidade - 1 AS 'Número de compatriotas'
FROM (
  SELECT Country, COUNT(Country) AS Quantidade
  FROM w3schools.customers
  GROUP BY Country
) AS t_total_habitantes
INNER JOIN w3schools.customers AS t_customers ON t_total_habitantes.Country = t_customers.Country
ORDER BY Nome;
