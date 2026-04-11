-- Scripts de Carga - Atividade 2
-- Romario Galdino
-- inserts 6 meses
INSERT INTO Users (name, email) VALUES ('User 6m', 'user6m@email.com');
INSERT INTO Tasks (user_id, category_id, description) VALUES (1, 1, 'Tarefa 6 meses');

-- inserts 3 anos
INSERT INTO Users (name, email) VALUES ('User 3y', 'user3y@email.com');
INSERT INTO Tasks (user_id, category_id, description) VALUES (3, 1, 'Tarefa 3 anos');

-- inserts 4 anos
INSERT INTO Users (name, email) VALUES ('User 4y', 'user4y@email.com');
INSERT INTO Tasks (user_id, category_id, description) VALUES (4, 1, 'Tarefa 4 anos');
