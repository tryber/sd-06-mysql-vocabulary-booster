--desafio11.sql
SELECT customers.contactname AS `Nome`,
customers.country AS `País`,
count(customers.country) AS `Número de compatriotas`,
FROM w3schools.customers
group by customers.country
ORDER BY `Nome` ASC;
