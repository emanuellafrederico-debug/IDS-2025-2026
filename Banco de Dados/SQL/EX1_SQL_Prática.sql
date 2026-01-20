create database EX1;
use EX1;

create table Produto (
IdProduto INT PRIMARY KEY,
Nome VARCHAR(40) NOT NULL,
Data_Fabricacao DATE NOT NULL
);

create table Fornecedor (
IdFornecedor INT PRIMARY KEY,
Nome VARCHAR(40) NOT NULL,
Telefone_Comercial VARCHAR(15) NOT NULL,
Email VARCHAR(40) NOT NULL
);

create table Produto_Fornecedor (
IdProduto INT NOT NULL,
IdFornecedor INT NOT NULL,
FOREIGN KEY (IdProduto) REFERENCES Produto(IdProduto),
FOREIGN KEY (IdFornecedor) REFERENCES Fornecedor(IdFornecedor),
PRIMARY KEY(IdProduto,IdFornecedor)
);