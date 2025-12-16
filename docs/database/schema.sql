-- Таблица клиентов
CREATE TABLE clients (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(100)
);

-- Таблица тренеров
CREATE TABLE trainers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    specialization VARCHAR(100)
);

-- Таблица тренировок
CREATE TABLE workouts (
    id SERIAL PRIMARY KEY,
    title VARCHAR(200),
    trainer_id INTEGER,
    date_time TIMESTAMP,
    max_people INTEGER
);

-- Таблица записей
CREATE TABLE registrations (
    id SERIAL PRIMARY KEY,
    client_id INTEGER,
    workout_id INTEGER,
    registration_date TIMESTAMP
);
