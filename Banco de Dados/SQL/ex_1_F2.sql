CREATE DATABASE exec1_F2;
USE exec1_F2;

CREATE TABLE Venda(
id INT AUTO_INCREMENT PRIMARY KEY,
data_venda DATE NOT NULL,
preco_total INT NOT NULL
);

CREATE TABLE Produto(
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
preco DECIMAL(10,2) NOT NULL
);

CREATE TABLE Cliente(
id  INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
email VARCHAR(100)
);

CREATE TABLE Venda_Produto(
id_venda INT,
id_produto INT,
id_cliente INT,
PRIMARY KEY(id_venda,id_produto),
FOREIGN KEY (id_venda) REFERENCES Venda(id),
FOREIGN KEY (id_produto) REFERENCES Produto(id),
FOREIGN KEY (id_cliente) REFERENCES Cliente(id)
);