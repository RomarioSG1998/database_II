-- Seman 2 - Atividade #1: Stored Procedures
USE escola_jala;

DELIMITER //

DROP PROCEDURE IF EXISTS sp_listar_alunos //
-- 1. Exibir dados de uma tabela
CREATE PROCEDURE sp_listar_alunos()
BEGIN
    SELECT * FROM alunos;
END //

DROP PROCEDURE IF EXISTS sp_filtrar_alunos_por_curso //
-- 2. Utilizar parâmetros para filtrar
CREATE PROCEDURE sp_filtrar_alunos_por_curso(IN p_curso_nome VARCHAR(100))
BEGIN
    SELECT a.nome FROM alunos a
    JOIN matriculas m ON a.id = m.aluno_id
    JOIN cursos c ON c.id = m.curso_id
    WHERE c.nome_curso = p_curso_nome;
END //

DROP PROCEDURE IF EXISTS sp_inserir_aluno_seguro //
-- 3. Inserir dados com condicionais
CREATE PROCEDURE sp_inserir_aluno_seguro(IN p_nome VARCHAR(100), IN p_idade INT, IN p_email VARCHAR(100))
BEGIN
    IF p_idade >= 18 THEN
        INSERT INTO alunos (nome, idade, email) VALUES (p_nome, p_idade, p_email);
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Aluno deve ter 18 anos ou mais';
    END IF;
END //

DROP PROCEDURE IF EXISTS sp_aplicar_reajuste_cursos //
-- 4. Atualizar dados com repetições (Loop)
CREATE PROCEDURE sp_aplicar_reajuste_cursos(IN p_percentual DECIMAL(5,2))
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE c_id INT;
    DECLARE cur CURSOR FOR SELECT id FROM cursos;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO c_id;
        IF done THEN LEAVE read_loop; END IF;
        UPDATE cursos SET valor_mensalidade = valor_mensalidade * (1 + p_percentual/100) WHERE id = c_id;
    END LOOP;
    CLOSE cur;
END //

DROP PROCEDURE IF EXISTS sp_inserir_aluno_handler //
-- 5. Tratamento de exceções
CREATE PROCEDURE sp_inserir_aluno_handler(IN p_nome VARCHAR(100), IN p_idade INT, IN p_email VARCHAR(100))
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        SELECT 'Ocorreu um erro ao inserir o aluno' AS erro;
    END;
    
    INSERT INTO alunos (nome, idade, email) VALUES (p_nome, p_idade, p_email);
END //

DELIMITER ;
