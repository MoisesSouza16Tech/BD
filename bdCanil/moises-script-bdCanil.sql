CREATE DATABASE bdCanil

USE bdCanil

CREATE TABLE tbCandidato (
	codCandidato INT PRIMARY KEY IDENTITY(1,1)
	, nomeCandidato VARCHAR(50) NOT NULL
	, cpfCandidato CHAR(14) NOT NULL
	, logradouroCandidato VARCHAR(60) NOT NULL
	, numLogCandidato INT NOT NULL
	, compCandidato VARCHAR(10)
	, cepCandidato CHAR(9) NOT NULL
	, bairroCandidato VARCHAR(30) NOT NULL
	, cidadeCandidato VARCHAR(25) NOT NULL 
)

CREATE TABLE tbFoneCandidato (
	codFoneCandidato INT PRIMARY KEY IDENTITY(1,1)
	, numFoneCandidato VARCHAR(14) NOT NULL
	, codCandidato INT FOREIGN KEY REFERENCES tbCandidato(codCandidato)
)

CREATE TABLE tbAdocao (
	codAdocao INT PRIMARY KEY IDENTITY(1,1)
	, codCandidato INT FOREIGN KEY REFERENCES tbCandidato(codCandidato)
	, dataAdocao SMALLDATETIME NOT NULL
)

CREATE TABLE tbRaca (
	codRaca INT PRIMARY KEY IDENTITY(1,1)
	, nomeRaca VARCHAR(25) NOT NULL
)

CREATE TABLE tbDog (
	codDog INT PRIMARY KEY IDENTITY(1,1)
	, nomeDog VARCHAR(20) NOT NULL
	, codRaca INT FOREIGN KEY REFERENCES tbRaca(codRaca)
	, idadeDog INT NOT NULL
	, estadoDog VARCHAR(50) NOT NULL
)

CREATE TABLE tbAdocaoDog (
	codAdocaoDog INT PRIMARY KEY IDENTITY(1,1)
	, codDog INT FOREIGN KEY REFERENCES tbDog(codDog)
	, codAdocao INT FOREIGN KEY REFERENCES tbAdocao(codAdocao)
)

CREATE TABLE tbVacina (
	codVacina INT PRIMARY KEY IDENTITY(1,1)
	, nomeVacina VARCHAR(25) NOT NULL
)

CREATE TABLE tbCarteirinha (
	codCarteirinha INT PRIMARY KEY IDENTITY(1,1)
	, codDog INT FOREIGN KEY REFERENCES tbDog(codDog)
	, codVacina INT FOREIGN KEY REFERENCES tbVacina(codVacina)
	, dataAplic SMALLDATETIME NOT NULL
)

CREATE TABLE tbDoenca (
	codDoenca INT PRIMARY KEY IDENTITY(1,1)
	, nomeDoenca VARCHAR(25) NOT NULL
)

CREATE TABLE tbProntuario (
	codProntuario INT PRIMARY KEY IDENTITY(1,1)
	, codDog INT FOREIGN KEY REFERENCES tbDog(codDog)
	, codDoenca INT FOREIGN KEY REFERENCES tbDoenca(codDoenca)
	, dataCuraDoenca SMALLDATETIME NOT NULL
)