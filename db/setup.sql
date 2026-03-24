CREATE DATABASE db;

\c db

CREATE TABLE colaboradores (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

INSERT INTO colaboradores (nome, email) VALUES 
('Ana Silva', 'ana.silva@empresa.com'),
('Carlos Santos', 'carlos.santos@empresa.com'),
('Mariana Oliveira', 'mariana.oliveira@empresa.com'),
('João Pereira', 'joao.pereira@empresa.com'),
('Fernanda Costa', 'fernanda.costa@empresa.com');