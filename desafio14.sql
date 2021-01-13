(SELECT
  DISTINCT c1.COUNTRY AS `País`
FROM
  w3schools.customers as c1)
UNION
(SELECT
  DISTINCT s1.country AS `País`
FROM
  w3schools.suppliers AS s1)
ORDER BY `País`
LIMIT 5;
