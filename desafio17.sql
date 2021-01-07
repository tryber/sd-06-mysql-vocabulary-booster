USE w3schools;

DELIMITER $$

CREATE TRIGGER trigger_insert_date BEFORE INSERT ON orders
  FOR EACH ROW
  BEGIN
    SET NEW.OrderDate = NOW();
  END; $$

DELIMITER ;

INSERT INTO orders(CustomerID, EmployeeID, ShipperID) VALUES (4, 2, 2);

SELECT * FROM orders WHERE CustomerID = 4;
