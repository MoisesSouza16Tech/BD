CREATE DATABASE bdImobiliaria

USE bdImobiliaria

CREATE TABLE tbCliente (
	codCliente INT PRIMARY KEY IDENTITY(1,1)
	, nomeCliente VARCHAR(50) NOT NULL
	, rgCliente VARCHAR(15) NOT NULL
	, cpfCliente CHAR(14) NOT NULL
	, dataNascCliente SMALLDATETIME NOT NULL
)

CREATE TABLE tbFoneCliente (
	codFoneCliente INT PRIMARY KEY IDENTITY(1,1)
	, numFoneCliente VARCHAR(14) NOT NULL
	, codCliente INT FOREIGN KEY REFERENCES tbCliente(codCliente)
)

CREATE TABLE tbProprietario (
	codProprietario INT PRIMARY KEY IDENTITY(1,1)
	, nomeProprietario VARCHAR(50) NOT NULL
	, cpfProprietario CHAR(14) NOT NULL
)

CREATE TABLE tbVendedor (
	codVendedor INT PRIMARY KEY IDENTITY(1,1)
	, nomeVendedor VARCHAR(50) NOT NULL
	, rgVendedor VARCHAR(15) NOT NULL
	, cpfVendedor CHAR(10) NOT NULL
)


CREATE TABLE tbFiador (
	codFiador INT PRIMARY KEY IDENTITY(1,1)
	, nomeFiador VARCHAR(50) NOT NULL
	, cpfFiador CHAR(14) NOT NULL
	, rgFiador VARCHAR(15) NOT NULL
	, dataNascFiador SMALLDATETIME NOT NULL
)

CREATE TABLE tbTipoImovel (
	codTipoImovel INT PRIMARY KEY IDENTITY(1,1)
	, descTipoImovel VARCHAR(20) NOT NULL
)

CREATE TABLE tbImovel (
	codImovel INT PRIMARY KEY IDENTITY(1,1)
	, logradouroImovel VARCHAR(60) NOT NULL
	, numLogImovel INT NOT NULL
	, complementoImovel VARCHAR(10)
	, cepImovel CHAR(9) NOT NULL
	, bairroImovel VARCHAR(30) NOT NULL
	, cidadeImovel VARCHAR(25) NOT NULL
	, codProprietario INT FOREIGN KEY REFERENCES tbProprietario(codProprietario)
	, codTipoImovel INT FOREIGN KEY REFERENCES tbTipoImovel(codTipoImovel)
)

CREATE TABLE tbLocacao (
	codLocacao INT PRIMARY KEY IDENTITY(1,1)
	, dataLocacao SMALLDATETIME NOT NULL
	, codCliente INT FOREIGN KEY REFERENCES tbCliente(codCliente)
	, codFiador INT FOREIGN KEY REFERENCES tbFiador(codFiador)
	, codImovel INT FOREIGN KEY REFERENCES tbImovel(codImovel)
	, valorLocacao SMALLMONEY NOT NULL
)

CREATE TABLE tbVenda (
	codVenda INT PRIMARY KEY IDENTITY(1,1)
	, valorVenda SMALLMONEY NOT NULL
	, dataVenda SMALLDATETIME NOT NULL
	, codCliente INT FOREIGN KEY REFERENCES tbCliente(codCliente)
	, codImovel INT FOREIGN KEY REFERENCES tbImovel(codImovel)
	, codVendedor INT FOREIGN KEY REFERENCES tbVendedor(codVendedor)
)