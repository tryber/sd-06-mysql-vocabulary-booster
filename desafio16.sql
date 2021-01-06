USE hr.jobs; -- obrigatório para criar a função no banco correto
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email)
RETURNS INT Quantity
BEGIN
    query_sql
    RETURN resultado_a_ser_retornado;
END $$DELIMITER ;