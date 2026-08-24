CREATE TABLE Clientes (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Data_Cadastro DATE NOT NULL
);

-- Inserção da 1ª linha (Ana Silva)
INSERT INTO Clientes (Nome, Email, Data_Cadastro) 
VALUES ('Ana Silva', 'ana.silva@example.com', '2026-08-24');

-- Inserção das linhas 2 e 3 em um único comando INSERT INTO
INSERT INTO Clientes (Nome, Email, Data_Cadastro) VALUES
('Carlos Silva', 'carlos.silva@example.com', '2023-02-20'),
('Beatriz Souza', 'beatriz.s@example.com', '2023-03-10');
