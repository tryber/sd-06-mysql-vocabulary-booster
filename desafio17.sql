USE w3schools;

DELIMITER $$
CREATE TRIGGER insercao_orders
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
SET
NEW.orderDate = NOW();
END;
$$ DELIMITER ;

INSERT INTO orders(CustomerID, EmployeeID, ShipperID) VALUES (4,2,2);
SELECT * FROM orders
WHERE CustomerID = 4;
