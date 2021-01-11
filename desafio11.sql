SELECT one.contactname AS `Nome`,
one.country AS `País`,
COUNT(two.country) AS `Número de compatriotas`
FROM (w3schools.customers AS two
INNER JOIN w3schools.customers AS one
ON one.country = two.country AND one.contactname != two.contactname)
GROUP BY one.customerid
ORDER BY one.contactname;
