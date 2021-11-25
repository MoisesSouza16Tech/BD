USE bdRH

INSERT tbDepto(nomeDepto)
VALUES ('Diretoria')
	, ('Comercial')
    , ('Rh')
    , ('Vendas')
    , ('Tecnologia da Informação')

-- SELECT tbDepto:
SELECT * FROM tbDepto

INSERT tbFuncionario(nomeFuncionario, cpfFuncionario, rgFuncionario, dtNasctoFuncionario, salarioFuncionario, codDepto)
VALUES ('Pedro do Amaral', '654.245.622-81', '351679824', '01/04/2000', 5467.92, 1)
	, ('José Antunes', '564.205.852-06', '413682177', '03/06/1985', 3409.79, 2)
    , ('Larissa da Silva', '214.195.463-26', '846378107', '08/09/1975', 4814.35, 3)
    , ('Claldineia Ferreira', '186.739.472-03', '234894864', '05/02/1982', 3405.84, 4)
    , ('Carlos de Souza', '652.336.512-04', '906485137', '06/08/1986', 3726.45, 5)

-- SELECT tbFuncionario:
SELECT * FROM tbFuncionario

INSERT tbFoneFuncionario(numFoneFuncionario, codFuncionario)
VALUES ('11 95235-4528', 1)
	, ('11 94132-4722', 2)
    , ('11 93148-2209', 3)
    , ('11 98249-3427', 4)
    , ('11 93285-7916', 5)

-- SELECT tbFoneFuncionario:
SELECT * FROM tbFoneFuncionario

INSERT tbConjuge(nomeConjuge, cpfConjuge, rgConjuge, codFuncionario)
VALUES ('Maria do Amaral', '801.637.562-46', '824931694', 1)
    , ('Thamires Antunes', '634.571.936-07', '346208795', 2)
    , ('Luiz Silva', '090.413.629-18', '713568947', 3)
    , ('André Ferreira', '819.134.781-12', '145237826', 4)
    , ('Lúcia de Souza', '432.876.794-25', '715694365', 5)

-- SELECT tbConjuge:
SELECT * FROM tbConjuge

INSERT tbDependente(nomeDependente, dataNascDependente, codFuncionario)
VALUES ('Samuel do Amaral', '07/03/2005', 1)
    , ('Claúdio Antunes', '08/21/2008', 2)
    , ('Heloiza Silva', '02/15/2003', 3)
    , ('Marina Ferreira', '11/27/2009', 4)
    , ('Rafael de Souza', '04/26/2012', 5)

-- SELECT tbDependente:
SELECT * FROM tbDependente

INSERT tbProjeto(nomeProjeto, cargaHoraria)
VALUES ('Template Orkut', '4520')
    , ('Livraria Virtual LivraMais', '3500')
    , ('Gerenciador de Tarefas', '2700')
    , ('Análise Financeira', '3400')
    , ('Plataforma Extudys', '4630')

-- SELECT tbProjeto:
SELECT * FROM tbProjeto

INSERT tbFuncionarioProjeto(codFuncionario, codProjeto, qtdeHoras)
VALUES ('2', '3', '250')
    , ('1', '2', '320')
    , ('2', '1', '260')
    , ('3', '4', '410')
    , ('1', '5', '390')
    , ('4', '5', '520')
    , ('3', '1', '380')

-- SELECT tbFuncionarioProjeto:
SELECT * FROM tbFuncionarioProjeto


--SELECTS DAS TABELAS

SELECT * FROM tbFuncionario

SELECT * FROM tbFoneFuncionario

SELECT * FROM tbConjuge

SELECT * FROM tbDependente

SELECT * FROM tbProjeto

SELECT * FROM tbFuncionarioProjeto

--Moisés 1º DS
