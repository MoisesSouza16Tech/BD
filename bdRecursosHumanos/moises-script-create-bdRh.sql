CREATE DATABASE bdRh

USE bdRh

CREATE TABLE tbDepto (
	codDepto INT PRIMARY KEY IDENTITY(1,1)
	, nomeDepto VARCHAR(30) NOT NULL
)

CREATE TABLE tbFuncionario (
	codFuncionario INT PRIMARY KEY IDENTITY(1,1)
	, nomeFuncionario VARCHAR(50) NOT NULL
	, cpfFuncionario CHAR(14) NOT NULL
	, rgFuncionario VARCHAR(14) NOT NULL
	, dtNasctoFuncionario SMALLDATETIME NOT NULL
	, salarioFuncionario SMALLMONEY NOT NULL
	, codDepto INT FOREIGN KEY REFERENCES tbDepto(codDepto)
)

CREATE TABLE tbFoneFuncionario (
	codFoneFuncionario INT PRIMARY KEY IDENTITY(1,1)
	, numFoneFuncionario VARCHAR(14) NOT NULL
	, codFuncionario INT FOREIGN KEY REFERENCES tbFuncionario(codFuncionario)
)


CREATE TABLE tbConjuge (
	codConjuge INT PRIMARY KEY IDENTITY(1,1)
	, nomeConjuge VARCHAR(50) NOT NULL
    , cpfConjuge CHAR(14) NOT NULL
	, rgConjuge VARCHAR(15) NOT NULL
    , codFuncionario INT FOREIGN KEY REFERENCES tbFuncionario(codFuncionario)
)

CREATE TABLE tbDependente (
	codDependente INT PRIMARY KEY IDENTITY(1,1)
	, nomeDependente VARCHAR(50) NOT NULL
	, dataNascDependente SMALLDATETIME NOT NULL
    , codFuncionario INT FOREIGN KEY REFERENCES tbFuncionario(codFuncionario)
)

CREATE TABLE tbProjeto(
    codProjeto INT PRIMARY KEY IDENTITY(1,1)
    , nomeProjeto VARCHAR(50) NOT NULL
    , cargaHoraria INT NOT NULL
)

CREATE TABLE tbFuncionarioProjeto (
    codFuncionarioProjeto INT PRIMARY KEY IDENTITY(1,1)
    , codFuncionario INT FOREIGN KEY REFERENCES tbFuncionario(codFuncionario)
  	, codProjeto INT FOREIGN KEY REFERENCES tbProjeto(codProjeto)
    , qtdeHoras INT NOT NULL
)

--Moisés 1º DS


