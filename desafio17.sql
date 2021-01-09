USE w3schools;

DELIMITER $$
CREATE TRIGGER order_date_trigger
    AFTER INSERT ON orders
    FOR EACH ROW
BEGIN
    SET NEW.OrderDate = FORMAT (getdate(), 'yyyy-MM-dd ');
END; $$
DELIMITER ;
