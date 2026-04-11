-- Scripts de Carga: Projeto Capstone
-- Aluno: Romario Galdino
-- carga de 1 ano
INSERT INTO USERS (username, email) VALUES ('user1_1y', 'user1@capstone.com');
INSERT INTO TASKS (title, user_id, category_id) VALUES ('Tarefa Inicial', 1, 1);
-- (... total de 27600 registros)

-- carga de 2 anos
INSERT INTO USERS (username, email) VALUES ('user2_2y', 'user2@capstone.com');
-- (... total de 55200 registros)

-- carga de 5 anos
INSERT INTO USERS (username, email) VALUES ('user5_5y', 'user5@capstone.com');
-- (... total acumulado de 138000 registros)
