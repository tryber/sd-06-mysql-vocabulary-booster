select C1.ContactName as `Nome`, C1.Country as `País`, count(C2.Country) -1 as `Número de compatriotas`
from w3schools.customers as C1
inner join w3schools.customers as C2 on C1.Country = C2.Country
group by C1.CustomerID
having `Número de compatriotas` <> 0
order by C1.ContactName asc;
