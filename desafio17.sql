USE w3schools;

DELIMITER $$
CREATE TRIGGER trigger_inserir_data_atual
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
SET OLD.OrderDate = NOW();
END; $$
DELIMITER ;
