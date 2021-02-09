USE w3schools;

DROP TRIGGER IF EXISTS trigger_orders_insert;

DELIMITER $$
CREATE TRIGGER trigger_orders_insert
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
SET NEW.OrderDate = NOW();
END; $$
DELIMITER ;

INSERT INTO orders(CustomerID, EmployeeID, ShipperID) VALUES(4, 2, 2);
SELECT * FROM orders
WHERE CustomerID = 4;
