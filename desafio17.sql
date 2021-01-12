USE w3schools;
DELIMITER $$
CREATE TRIGGER trigger_perfil_insert
    BEFORE INSERT ON orders
    FOR EACH ROW
BEGIN
    SET NEW.OrderDate = NOW();       
END; $$
DELIMITER ;
INSERT INTO orders(OrderID, CustomerID, EmployeeID, ShipperID) VALUES (104435,4,2,2);
SELECT CustomerID, EmployeeID, OrderDate, ShipperID FROM w3schools.orders WHERE CustomerID = 4;
