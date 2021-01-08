DROP TRIGGER IF EXISTS w3schools.insert_order_date;

DELIMITER $$

CREATE TRIGGER insert_order_date
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
  SET NEW.OrderDate = CURDATE();
END $$

DELIMITER ;
