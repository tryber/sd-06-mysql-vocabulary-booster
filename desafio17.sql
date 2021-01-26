USE w3schools;
DROP TRIGGER IF EXISTS w3schools.tr_insert_order_date;
DELIMITER $$
CREATE TRIGGER tr_insert_order_date
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
SET NEW.OrderDate = NOW();
END $$
DELIMITER ;
