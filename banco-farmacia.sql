-- Criando a tabela Farmacia primeiro (pois ela é a "mãe" das outras)
CREATE TABLE Farmacia ( 
    cnpj_farmacia INT PRIMARY KEY,  
    end_farmacia VARCHAR(150),  
    nome_farmacia VARCHAR(100),  
    tel_farmacia VARCHAR(20) -- Telefones podem conter parênteses ou traços
); 

-- Criando a tabela Produto
CREATE TABLE produto ( 
    cod_produto INT PRIMARY KEY,  
    valor_produto DECIMAL(10,2), -- Usar Decimal para valores monetários
    qtd_valor INT,  
    cnpj_farmacia INT -- O nome aqui deve ser compatível para a relação
); 

-- Criando a tabela Farmaceutico
CREATE TABLE Farmaceutico ( 
    id_farmaceutico INT PRIMARY KEY,
    nome_farmaceutico VARCHAR(100),
    cnpj_farmacia INT
); 

-- Adicionando as chaves estrangeiras corretamente
ALTER TABLE produto ADD FOREIGN KEY(cnpj_farmacia) REFERENCES Farmacia (cnpj_farmacia);
ALTER TABLE Farmaceutico ADD FOREIGN KEY(cnpj_farmacia) REFERENCES Farmacia (cnpj_farmacia);
