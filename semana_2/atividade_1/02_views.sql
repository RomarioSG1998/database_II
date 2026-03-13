-- Seman 2 - Atividade #1: Views
USE escola_jala;

-- 1. Criação de views usando diferentes tipos de comandos
CREATE OR REPLACE VIEW vw_alunos_matriculados AS
SELECT a.nome, c.nome_curso, m.data_matricula
FROM alunos a
JOIN matriculas m ON a.id = m.aluno_id
JOIN cursos c ON c.id = m.curso_id;

-- 2. Criação de views indexadas (Simulação via Tabela e Trigger no MySQL)
-- No MySQL não há views indexadas nativas. Criamos uma tabela para persistir os dados.
CREATE TABLE IF NOT EXISTS vw_indexada_alunos_resumo (
    nome_aluno VARCHAR(100),
    total_cursos INT,
    PRIMARY KEY (nome_aluno)
);

-- 3. Modificação de views
ALTER VIEW vw_alunos_matriculados AS
SELECT a.id, a.nome, c.nome_curso, m.data_matricula, c.valor_mensalidade
FROM alunos a
JOIN matriculas m ON a.id = m.aluno_id
JOIN cursos c ON c.id = m.curso_id;

-- 4. Atualização de tabelas usando views
-- Views simples (sem JOINs complexos) permitem UPDATE
CREATE OR REPLACE VIEW vw_dados_alunos AS SELECT id, nome, email FROM alunos;
UPDATE vw_dados_alunos SET nome = 'Romario Atualizado' WHERE id = 1;

-- 5. Exclusão de views
CREATE VIEW vw_temporaria AS SELECT * FROM cursos;
DROP VIEW vw_temporaria;
