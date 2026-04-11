-- Dados de carga para semana 6
-- Romario Galdino
-- carga de 1 ano
INSERT INTO Users (name, email) VALUES ('User 1', 'user1@email.com');
INSERT INTO Categories (name) VALUES ('Cat 1');
INSERT INTO Tasks (user_id, category_id, description) VALUES (1, 1, 'Tarefa ano 1');

-- carga de 2 anos
INSERT INTO Users (name, email) VALUES ('User 2', 'user2@email.com');
INSERT INTO Tasks (user_id, category_id, description) VALUES (2, 1, 'Tarefa ano 2');

-- carga de 5 anos
INSERT INTO Users (name, email) VALUES ('User 5', 'user5@email.com');
INSERT INTO Tasks (user_id, category_id, description) VALUES (5, 1, 'Tarefa ano 5');
