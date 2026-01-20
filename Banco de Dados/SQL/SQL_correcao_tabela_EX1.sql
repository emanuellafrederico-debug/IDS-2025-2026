ALTER TABLE produtoFornecedor
	DROP FOREIGN KEY produtofornecedor_ibfk_1,
    DROP FOREIGN KEY produtofornecedor_ibfk_2;


ALTER TABLE produto 
	CHANGE COLUMN idProduto id INT AUTO_INCREMENT,
    CHANGE COLUMN nomeProduto nome VARCHAR(50) NOT NULL,
    CHANGE COLUMN dataFabricacao data_fabricacao DATE NOT NULL;
    
ALTER TABLE fornecedor
    CHANGE COLUMN idFornecedor id INT AUTO_INCREMENT,
    CHANGE COLUMN nomeFornecedor nome VARCHAR(60);
    
ALTER TABLE fornecedor
	CHANGE COLUMN nome nome VARCHAR(50) NOT NULL;
    
ALTER TABLE produtofornecedor
	CHANGE COLUMN idProduto id_produto INT,
    CHANGE COLUMN idFornecedor id_fornecedor INT,
    ADD CONSTRAINT fk_produto_pf FOREIGN KEY (id_produto) REFERENCES produto(id),
    ADD CONSTRAINT fk_forcenedor_pf FOREIGN KEY (id_fornecedor) REFERENCES fornecedor(id);
    
RENAME TABLE produtofornecedor to produro_fornecedor;
/*SHOW CREATE TABLE produtofornecedor;*/


