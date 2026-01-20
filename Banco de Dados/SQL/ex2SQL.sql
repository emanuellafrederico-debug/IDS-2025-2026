SET SQL_SAFE_UPDATES = 0;

SHOW CREATE TABLE telefone_cliente;

ALTER TABLE telefone_cliente
	DROP FOREIGN KEY fk_telefone_cliente_cliente,
	DROP FOREIGN KEY fk_telefone_cliente_telefone;

ALTER TABLE telefone_cliente
	ADD CONSTRAINT fk_telefone_cliente_cliente FOREIGN KEY (cpf) REFERENCES cliente(cpf) ON DELETE CASCADE ON UPDATE CASCADE,
    ADD CONSTRAINT fk_telefone_cliente_telefone FOREIGN KEY (id_telefone) REFERENCES telefone(id) ON DELETE CASCADE ON UPDATE CASCADE;
    
DELETE FROM cliente WHERE cpf = ("345.678.901-23");  

DELETE FROM cliente WHERE nome LIKE ("Pedro%");  

DELETE FROM cliente WHERE nome LIKE ("%Silva");  

DELETE FROM cliente WHERE nome LIKE ("%Rocha%");

DELETE FROM cliente WHERE nome LIKE ("B%") AND email LIKE ("%souza%");

DELETE FROM cliente WHERE nome LIKE ("João%") OR nome LIKE ("Flores%");

DELETE FROM telefone WHERE id BETWEEN ("3") AND ("6");

DELETE FROM telefone WHERE id IN (1,5,9);

DELETE FROM telefone_cliente WHERE cpf LIKE ("123.456.789-01") OR id_telefone > 9;

DELETE FROM telefone;