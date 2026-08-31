-- Ativa o suporte a chaves estrangeiras
PRAGMA foreign_keys = ON;

-- Criação da tabela Clientes
CREATE TABLE IF NOT EXISTS Clientes (
    ID INTEGER PRIMARY KEY,
    nomeCliente TEXT NOT NULL,
    emailCliente TEXT
);

-- Criação da tabela Compras
CREATE TABLE IF NOT EXISTS Compras (
    CompraID INTEGER PRIMARY KEY,
    ClienteID INTEGER,
    NomeLivro TEXT NOT NULL,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ID)
);

-- Teste rápido para verificar se as tabelas foram criadas
SELECT * FROM Clientes;
SELECT * FROM Compras;

=================================================================================================================
SELECT * FROM Clientes; 

-- Inserir dados na tabela Clientes
INSERT INTO Clientes (ID, nomeCliente, emailCliente) VALUES
(1, 'Carlos Silva', 'carlos@gmail.com'),
(2, 'Ana Souza', 'ana@gmail.com'),
(3, 'Mariana Costa', 'mariana@gmail.com');

-- Inserir dados na tabela Compras
INSERT INTO Compras (CompraID, ClienteID, NomeLivro) VALUES
(1, 1, 'O Hobbit'),
(2, 2, '1984'),
(3, 3, 'A Revolução dos Bichos');

SELECT c.nomeCliente, c.emailCliente, co.NomeLivro
FROM Clientes c
JOIN Compras co ON c.ID = co.ClienteID;


SELECT * FROM Clientes; 
SELECT * FROM Compras; 
