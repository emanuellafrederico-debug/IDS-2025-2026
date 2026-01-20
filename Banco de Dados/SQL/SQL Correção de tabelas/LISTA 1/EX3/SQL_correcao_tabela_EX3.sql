CREATE DATABASE exerc_3;
USE exerc_3;

CREATE TABLE fornecedor (
    cnpjFornecedor INT PRIMARY KEY,
    nomeFantasia VARCHAR(2),
    razaoSocial VARCHAR(250) NOT NULL
);

CREATE TABLE endereco (
    idEndereco INT AUTO_INCREMENT PRIMARY KEY,
    cnpjEndereco INT,
    ruaEndereco VARCHAR(150),
    numeroEndereco VARCHAR(100),
    cidadeEndereco VARCHAR(3),
    estadoEndereco VARCHAR(100),
    cepEndereco INT,
    FOREIGN KEY (cnpjEndereco) REFERENCES fornecedor(cnpjFornecedor)
);