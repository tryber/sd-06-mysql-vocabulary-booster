SELECT COUNT(*) AS orders_count FROM northwind.orders
WHERE employee_id IN (5, 6) AND shipper_id = 2;

-- SELECT * FROM northwind.orders AS orders_count
-- WHERE employee_id IN (5, 6)
-- AND shipper_id = 2;

-- SELECT * FROM northwind.orders
-- WHERE employee_id IN (5, 6)
-- AND shipper_id = 2;

-- SELECT employee_id IN (5, 6) + shipper_id = 2 AS orders_count
-- FROM northwind.orders;

-- SELECT * FROM northwind.orders
-- WHERE employee_id IN (5, 6)
-- AND shipper_id = 2;
