CREATE DATABASE ex2_F2;
USE ex2_F2;

CREATE TABLE especialidade(
id INT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
duracao DATE NOT NULL
);

CREATE TABLE medico(
id INT AUTO_INCREMENT PRIMARY KEY,
id_especialidade INT NOT NULL,
nome VARCHAR(50) NOT NULL,
FOREIGN KEY (id_especialidade) REFERENCES especialidade(id)
);

CREATE TABLE paciente(
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
data_nascimento DATE NOT NULL
);

CREATE TABLE consulta(
id_medico INT,
id_paciente INT,
data_consulta DATE NOT NULL,
PRIMARY KEY(id_medico, id_paciente),
FOREIGN KEY (id_medico) REFERENCES medico(id),
FOREIGN KEY (id_paciente) REFERENCES paciente(id)
);