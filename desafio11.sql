select c.ContactName as `Nome`,
c.Country as `País`,
count(b.Country)-1 as `Número de compatriotas`
from w3schools.customers as c
inner join w3schools.customers as b on c.Country = b.Country
GROUP BY c.ContactName
having count(b.Country)-1 <> 0
order by c.ContactName asc;
