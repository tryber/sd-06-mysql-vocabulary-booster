(SELECT Country AS `País` FROM customers ORDER BY `País`)
UNION
(SELECT Country AS `País` FROM suppliers ORDER BY `País`)
ORDER BY `País` LIMIT 5;
