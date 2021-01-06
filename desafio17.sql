USE w3schools;
DELIMITER $$

CREATE TRIGGER trigger_insert_order_date
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
SET NEW.OrderDate=CURRENT_DATE();
END; $$

DELIMITER ;

INSERT INTO w3schools.orders(CustomerID, EmployeeID, ShipperID)
VALUES (4, 2, 2);
SELECT * FROM w3schools.orders
WHERE CustomerID=4;
