(SELECT DISTINCT
    (table1.Country) AS 'País'
FROM
    w3schools.customers AS table1) UNION (SELECT DISTINCT
    (table2.Country) AS 'País'
FROM
    w3schools.suppliers AS table2) ORDER BY `País` LIMIT 5;
