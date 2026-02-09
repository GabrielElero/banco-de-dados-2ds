
-- Create the 'estudantes' table
CREATE TABLE estudantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    data_nascimento DATE NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

-- Create the 'cursos' table
CREATE TABLE cursos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    duracao INT NOT NULL -- duração em meses
);

-- Create the 'matriculas' table
CREATE TABLE matriculas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    estudante_id INT,
    curso_id INT,
    data_matricula DATE NOT NULL,
    FOREIGN KEY (estudante_id) REFERENCES estudantes(id),
    FOREIGN KEY (curso_id) REFERENCES cursos(id)
);
