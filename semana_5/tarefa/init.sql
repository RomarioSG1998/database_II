CREATE TABLE USERS (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100),
    password_hash TEXT,
    created_at TIMESTAMP
);

CREATE TABLE CATEGORIES (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    color_code VARCHAR(7),
    user_id INTEGER REFERENCES USERS(id)
);

CREATE TABLE TASKS (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    description TEXT,
    is_completed BOOLEAN,
    due_date TIMESTAMP,
    priority INTEGER,
    user_id INTEGER REFERENCES USERS(id),
    category_id INTEGER REFERENCES CATEGORIES(id),
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);
