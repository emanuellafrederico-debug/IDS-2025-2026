CREATE DATABASE exerc_1;
USE exerc_1;

CREATE TABLE produto (
    idProduto INT AUTO_INCREMENT PRIMARY KEY,
    nomeProduto VARCHAR(150),
    dataFabricacao DATETIME NOT NULL
);

CREATE TABLE fornecedor (
    idFornecedor INT AUTO_INCREMENT PRIMARY KEY,
    nomeFornecedor VARCHAR(4)
);

CREATE TABLE produtoFornecedor (
    idProduto INT,
    idFornecedor INT,
    PRIMARY KEY (idProduto, idFornecedor),
    FOREIGN KEY (idProduto) REFERENCES produto(idProduto),
    FOREIGN KEY (idFornecedor) REFERENCES fornecedor(idFornecedor)
);