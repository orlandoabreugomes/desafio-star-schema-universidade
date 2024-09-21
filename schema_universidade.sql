DROP DATABASE IF EXISTS universidade;
CREATE DATABASE universidade;

CREATE SCHEMA IF NOT EXISTS universidade;
USE universidade;

-- Tabela Dimensão Professor
CREATE TABLE Dim_Professor (
    ProfessorID INT PRIMARY KEY,
    Nome VARCHAR(45),
    Titulacao VARCHAR(45),
    DataAdmissao DATE
);

-- Tabela Dimensão Curso
CREATE TABLE Dim_Curso (
    CursoID INT PRIMARY KEY,
    NomeCurso VARCHAR(45),
    CargaHorariaCurso INT,
    Modalidade VARCHAR(45)
);

-- Tabela Dimensão Departamento
CREATE TABLE Dim_Departamento (
    DepartamentoID INT PRIMARY KEY,
    NOmeCampi VARCHAR(45),
    NomeDepartamento VARCHAR(45),
    Localizacao VARCHAR(45)
);

-- Tabela Dimensão Data
CREATE TABLE Dim_Data (
    DataID INT PRIMARY KEY,
    DataCompleta DATE,
    Ano INT,
    Mes INT,
    Trimestre INT,
    DiaDaSemana VARCHAR(15)
);

-- Tabela Dimensão Disciplina
CREATE TABLE dm_disciplina (
    DisciplinaID INT PRIMARY KEY,
    NomeDisciplina VARCHAR(45),
    CargaHorariaDisciplina INT,
    CursoID INT,
    PreRequisitos VARCHAR(45)  -- Campo para armazenar pré-requisitos como uma lista
);

-- Tabela Fato - Fato_Professor
CREATE TABLE Fato_Professor (
    FatoID INT PRIMARY KEY AUTO_INCREMENT,
    ProfessorID INT,
    CursoID INT,
    DepartamentoID INT,
    DataID INT,
    DisciplinaID INT,
    CargaHoraria INT,
    NumeroDeCursos INT,
    FOREIGN KEY (ProfessorID) REFERENCES Dim_Professor(ProfessorID),
    FOREIGN KEY (CursoID) REFERENCES Dim_Curso(CursoID),
    FOREIGN KEY (DepartamentoID) REFERENCES Dim_Departamento(DepartamentoID),
    FOREIGN KEY (DataID) REFERENCES Dim_Data(DataID),
    FOREIGN KEY (DisciplinaID) REFERENCES dm_disciplina(DisciplinaID)
);
