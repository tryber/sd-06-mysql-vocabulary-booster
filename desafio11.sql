select c.ContactName as `Nome`,
c.Country as `País`,
count(b.Country)-1 as `Número de compatriotas`
from w3schools.customers as c
inner join w3schools.customers as b on c.Country = b.Country
GROUP BY `Nome`
having `Número de compatriotas` >= 1
order by `Nome` asc;
