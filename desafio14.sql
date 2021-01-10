SELECT DISTINCT t_customers.Country
FROM w3schools.customers AS t_customers
INNER JOIN w3schools.suppliers AS t_suppliers
ON t_customers.Country = t_suppliers.Country
ORDER BY t_customers.Country
LIMIT 5;
