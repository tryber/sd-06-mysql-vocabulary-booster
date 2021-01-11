select c.ContactName as `Nome`,
c.Country as `País`,
count(b.Country) as `Número de compatriotas`
from w3schools.customers as c
inner join w3schools.customers as b on c.Country = b.Country
group by `Nome`
order by `Nome`;
