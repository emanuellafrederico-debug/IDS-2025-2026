SHOW CREATE TABLE telefoneCliente;

ALTER TABLE telefoneCliente
	DROP FOREIGN KEY telefonecliente_ibfk_1,
    DROP FOREIGN KEY telefonecliente_ibfk_2;
    
ALTER TABLE cliente
	CHANGE COLUMN cpfCliente cpf VARCHAR(15),
    CHANGE COLUMN nomeCliente nome VARCHAR(50),
    CHANGE COLUMN emailCliente email VARCHAR(60) UNIQUE;

ALTER TABLE telefone
	CHANGE COLUMN idTelefone id INT AUTO_INCREMENT,
    CHANGE COLUMN telCelular tel_celular VARCHAR(13),
    CHANGE COLUMN telComercial tel_comercial VARCHAR(13),
    CHANGE COLUMN telResidencial tel_residencial VARCHAR(12);
    
ALTER TABLE telefoneCliente
	CHANGE COLUMN cpfCliente cpf_cliente VARCHAR(15),
    CHANGE COLUMN idTelefone id_telefone INT,
    ADD CONSTRAINT fk_cliente_tc FOREIGN KEY (cpf_cliente) REFERENCES cliente(cpf),
    ADD CONSTRAINT fk_telefone_tc FOREIGN KEY (id_telefone) REFERENCES telefone(id);
    
RENAME TABLE telefoneCliente to telefone_cliente
    
    