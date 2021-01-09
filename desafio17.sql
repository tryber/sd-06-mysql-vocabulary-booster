USE w3schools;

DELIMITER $$
CREATE TRIGGER trigger_inserir_data_atual
AFTER INSERT ON w3schools.orders
FOR EACH ROW
BEGIN
INSERT INTO OrderDate
VALUES(NOW());
END $$
DELIMITER ;
