SELECT  c1 . NomeDoContato  AS  ` Nome ` , c1 . País  AS  ` País ` , COUNT ( c2 . País ) -  1  AS  ` Número de compatriotas `
DE  w3schools . clientes  AS c1
PARTICIPE do  w3schools . clientes  AS c2 ON  c1 . País  =  c2 . País
GRUPO POR  c1 . Identificação do Cliente
TENDO  ` Número de compatriotas `  <>  0
ORDEM DE  ` Nome ` ;
