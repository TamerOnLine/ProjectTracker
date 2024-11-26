-- Create a new database for the application
CREATE DATABASE postgres_db;

-- Switch to the newly created database (optional, if needed)
-- \c postgres_db

-- Create a 'users' table with an auto-incrementing primary key
CREATE TABLE users (
    id SERIAL PRIMARY KEY,             -- Unique ID for each user
    username VARCHAR(50) NOT NULL,     -- Username (maximum 50 characters, required)
    password VARCHAR(50) NOT NULL      -- Password (maximum 50 characters, required)
);
