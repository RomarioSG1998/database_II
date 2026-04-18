-- Script de Carga Inicial para o Banco de Dados Hospital
CREATE DATABASE IF NOT EXISTS Hospital;
USE Hospital;

DROP TABLE IF EXISTS consultas, exames, unidades, medicos, pacientes;

CREATE TABLE pacientes (id INT PRIMARY KEY AUTO_INCREMENT, nome VARCHAR(100), idade INT);
CREATE TABLE medicos (id INT PRIMARY KEY AUTO_INCREMENT, nome VARCHAR(100), especialidade VARCHAR(100));
CREATE TABLE consultas (id INT PRIMARY KEY AUTO_INCREMENT, paciente_id INT, medico_id INT, data DATE);
CREATE TABLE exames (id INT PRIMARY KEY AUTO_INCREMENT, nome VARCHAR(100), resultado TEXT);
CREATE TABLE unidades (id INT PRIMARY KEY AUTO_INCREMENT, nome VARCHAR(100), localizacao VARCHAR(100));

INSERT INTO pacientes (nome, idade) VALUES ('Joao Silva', 45), ('Maria Oliveira', 30), ('Jose Santos', 60), ('Ana Costa', 25), ('Carlos Peixoto', 50);
INSERT INTO medicos (nome, especialidade) VALUES ('Dr. Arnaldo', 'Cardiologia'), ('Dra. Beatriz', 'Pediatria'), ('Dr. Claudio', 'Ortopedia'), ('Dra. Daniela', 'Neurologia'), ('Dr. Evaldo', 'Radiologia');
INSERT INTO consultas (paciente_id, medico_id, data) VALUES (1, 1, '2023-01-01'), (2, 2, '2023-01-02'), (3, 3, '2023-01-03'), (4, 4, '2023-01-04'), (5, 5, '2023-01-05');
INSERT INTO exames (nome, resultado) VALUES ('Sangue', 'Normal'), ('Raio-X', 'Ok'), ('Resonancia', 'Normal'), ('Urina', 'Alterado'), ('Vista', 'Normal');
INSERT INTO unidades (nome, localizacao) VALUES ('Unidade Centro', 'Rua A'), ('Unidade Norte', 'Av B'), ('Unidade Sul', 'Rua C'), ('Unidade Leste', 'Av D'), ('Unidade Oeste', 'Rua E');
