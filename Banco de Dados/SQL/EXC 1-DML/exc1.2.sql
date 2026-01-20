SELECT * FROM produto;

DELETE FROM produto WHERE id = 8;

DELETE FROM produto WHERE nome LIKE ("leite%");

ALTER TABLE produto_fornecedor
	DROP FOREIGN KEY fk_produto,
	DROP FOREIGN KEY fk_fornecedor;

ALTER TABLE produto_fornecedor
	ADD CONSTRAINT fk_produto FOREIGN KEY (id_produto) REFERENCES produto(id) ON DELETE CASCADE ON UPDATE CASCADE,
    ADD CONSTRAINT fk_fornecedor FOREIGN KEY (id_fornecedor) REFERENCES fornecedor(id) ON DELETE CASCADE ON UPDATE CASCADE;

SELECT * FROM produto_fornecedor;

-- SHOW CREATE TABLE produto_fornecedor