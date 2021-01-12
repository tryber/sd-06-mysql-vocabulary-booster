SELECT c.ContactName AS 'Nome',
c.Country AS 'País',
count(b.Country)-1 AS 'Número de compatriotas'
FROM w3schools.customers AS c
INNER JOIN w3schools.customers as b on c.Country = b.Country
GROUP BY c.ContactName
HAVING count(b.Country)-1 <> 0
ORDER by c.ContactName asc;
