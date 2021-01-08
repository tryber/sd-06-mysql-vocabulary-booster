SELECT C.COUNTRY AS 'País' FROM w3schools.customers AS C JOIN w3schools.suppliers AS S 
WHERE C.Country <> S.Country
GROUP BY `País` 
UNION
SELECT S.COUNTRY AS 'País' FROM w3schools.customers AS C JOIN w3schools.suppliers AS S 
WHERE C.Country <> S.Country
GROUP BY `País` ORDER BY `País` LIMIT 5;
