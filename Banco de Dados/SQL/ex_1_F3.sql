CREATE DATABASE ex1_F3;
USE ex1_F3;


CREATE TABLE departamento(
id INT PRIMARY KEY,
nome VARCHAR(50),
descricao VARCHAR(150)
);

CREATE TABLE gerente(
id INT PRIMARY KEY,
nome VARCHAR(50),
FOREIGN KEY (id_departamento) REFERENCES departamento(id)
);

CREATE TABLE local_de_trabalho(
id_departamento INT PRIMARY KEY,
sala INT NOT NULL,
andar INT NOT NULL,
predio INT NOT NULL,
FOREIGN KEY (id_departamento) REFERENCES departamento(id)
);

CREATE TABLE funcionario(
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50),
id_departamento INT NOT NULL,
id_gerente INT NOT NULL,
FOREIGN KEY (id_departamento) REFERENCES departamento(id),
FOREIGN KEY (id_gerente) REFERENCES gerente(id)
);