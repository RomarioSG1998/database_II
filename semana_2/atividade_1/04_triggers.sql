-- Seman 2 - Atividade #1: Triggers
USE escola_jala;

DELIMITER //

-- 1. Registro de alterações (Triggers de Log)
DROP TRIGGER IF EXISTS tr_pos_insert_matricula //
CREATE TRIGGER tr_pos_insert_matricula
AFTER INSERT ON matriculas
FOR EACH ROW
BEGIN
    INSERT INTO historico_matriculas (aluno_id, acao) VALUES (NEW.aluno_id, 'NOVA_MATRICULA');
END //

-- 2. Validação de dados antes de permitir operações
DROP TRIGGER IF EXISTS tr_pre_insert_aluno //
CREATE TRIGGER tr_pre_insert_aluno
BEFORE INSERT ON alunos
FOR EACH ROW
BEGIN
    IF NEW.idade < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Idade não pode ser negativa';
    END IF;
END //

-- 3. Trigger para histórico (UPDATE)
DROP TRIGGER IF EXISTS tr_pos_update_aluno //
CREATE TRIGGER tr_pos_update_aluno
AFTER UPDATE ON alunos
FOR EACH ROW
BEGIN
    INSERT INTO historico_matriculas (aluno_id, acao) VALUES (NEW.id, CONCAT('ALTERACAO_DADOS: ', OLD.nome, ' -> ', NEW.nome));
END //

DELIMITER ;
