(select distinct Country as `País`
from w3schools.customers)
union 
(select distinct Country as `País`
from w3schools.suppliers)
order by `País`
limit 5;
