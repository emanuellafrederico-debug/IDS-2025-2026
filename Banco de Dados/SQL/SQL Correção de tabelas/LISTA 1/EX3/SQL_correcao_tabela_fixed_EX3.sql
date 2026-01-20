SHOW CREATE TABLE endereco;

ALTER TABLE endereco
	DROP FOREIGN KEY endereco_ibfk_1;

ALTER TABLE fornecedor
	CHANGE COLUMN cnpjFornecedor cnpj VARCHAR(15),
    CHANGE COLUMN nomeFantasia nome_fantasia VARCHAR(50),
    CHANGE COLUMN razaoSocial razao_social VARCHAR(50) NOT NULL;
    
ALTER TABLE endereco
	CHANGE COLUMN idEndereco id INT AUTO_INCREMENT,
    CHANGE COLUMN cnpjEndereco cpnj_endereco VARCHAR(15),
    CHANGE COLUMN ruaEndereco rua VARCHAR(50),
    CHANGE COLUMN numeroEndereco numero VARCHAR(255),
    CHANGE COLUMN cidadeEndereco cidade VARCHAR(25),
    CHANGE COLUMN estadoEndereco estado VARCHAR(25),
    CHANGE COLUMN cepEndereco cep INT NOT NULL,
    ADD CONSTRAINT fk_cpnj_endereco_ef FOREIGN KEY (cpnj_endereco) REFERENCES fornecedor(cnpj);
