-- Seman 2 - Atividade #1: Base Schema
USE escola_jala;

CREATE TABLE IF NOT EXISTS alunos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    email VARCHAR(100) UNIQUE,
    data_cadastro DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS cursos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_curso VARCHAR(100) NOT NULL,
    valor_mensalidade DECIMAL(10, 2) NOT NULL
);

CREATE TABLE IF NOT EXISTS matriculas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    aluno_id INT,
    curso_id INT,
    data_matricula DATE,
    FOREIGN KEY (aluno_id) REFERENCES alunos(id),
    FOREIGN KEY (curso_id) REFERENCES cursos(id)
);

CREATE TABLE IF NOT EXISTS historico_matriculas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    aluno_id INT,
    acao VARCHAR(255),
    data_acao DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Seed data (using IGNORE to avoid duplicate key errors on re-run)
INSERT IGNORE INTO cursos (id, nome_curso, valor_mensalidade) VALUES (1, 'Engenharia de Software', 500.00), (2, 'Ciência de Dados', 600.00);
INSERT IGNORE INTO alunos (id, nome, idade, email) VALUES (1, 'Romario Jala', 25, 'romario@jala.com'), (2, 'Ana Silva', 22, 'ana@email.com');
INSERT IGNORE INTO matriculas (id, aluno_id, curso_id, data_matricula) VALUES (1, 1, 1, CURDATE()), (2, 2, 2, CURDATE());
