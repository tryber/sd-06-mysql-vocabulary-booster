USE w3schools;
DELIMITER $$
CREATE TRIGGER DATA_ATUAL
BEFORE INSERT ON w3schools.orders
FOR EACH ROW
BEGIN
SET NEW.OrderDate = now();
END $$
DELIMITER ;

INSERT INTO orders(CustomerID, EmployeeID, ShipperID) values (4, 2, 2)
