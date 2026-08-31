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
