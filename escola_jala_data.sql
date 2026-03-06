USE escola_jala;

-- Inserção de dados iniciais (Professores)
INSERT INTO professores (nome, especialidade) VALUES ('Mestre Jala', 'SQL');

-- Inserção de dados iniciais (Alunos)
INSERT INTO alunos (nome, data_nascimento) VALUES ('Romário Atualizado', '2000-01-01');

-- Inserção de dados iniciais (Materias)
INSERT INTO materias (nome, professor_id) VALUES ('BD II', (SELECT id FROM professores WHERE nome = 'Mestre Jala'));

-- Inserção de dados iniciais (Notas)
INSERT INTO notas (aluno_id, materia_id, valor) VALUES 
((SELECT id FROM alunos WHERE nome = 'Romário Atualizado'), 
 (SELECT id FROM materias WHERE nome = 'BD II'), 
 10.00);
