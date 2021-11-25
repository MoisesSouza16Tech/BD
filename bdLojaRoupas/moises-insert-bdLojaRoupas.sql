USE bdLojaRoupas

INSERT tbFabricante(nomeFabricante) 
VALUES ('Malwee')
    , ('Marisol')
    , ('Cia da Malha')

--SELECT * FROM tbFabricante

INSERT tbFuncionario(nomeFuncionario, idadeFuncionario, dataAdmissao, salarioFuncionario) 
VALUES ('Marcos Ferreira', '29', '01/07/2019', '1870.20')
    , ('Thamires Christina', '34', '07/03/2019', '1870.20')

--SELECT * FROM tbFuncionario

INSERT tbProduto(nomeProduto, precoProduto, dataEntradaProduto, estoqueProduto, codFuncionario, codFabricante)
VALUES ('Calça Jeans', 99.90, '11/08/2021', '180', 2, 1)
    , ('Short Jeans', 65.80, '10/08/2021', '220', 2, 1)
    , ('Blusa Jeans', 49.90, '09/08/2021', '150', 1, 1)
    , ('Sapatilha', 54.40, '08/08/2021', '360', 2, 2)
    , ('Sandalia', 43.59, '07/08/2021', '240', 1, 2)
    , ('Short-Saia', 72.90, '06/08/2021', '180', 1, 2)
    , ('Short de Academia', 81.20, '05/08/2021', '220', 2, 3)
    , ('Calça Skinny', 68.70, '04/08/2021', '260', 2, 3)
    , ('Blusa Manga Longa', 84.75, '03/08/2021', '310', 1, 3)
    
--SELECT * FROm tbProduto

INSERT tbCliente(nomeCliente, idadeCliente)
VALUES ('Pedro Matos', '31')
    , ('Ricardo Cardoso', '26')
    , ('Sandra Souza', '37')
    , ('Cátia Pereira', '28')
    , ('Lúcia Souza', '34')

--SELECT * FROm tbCliente

INSERT tbVendedor(nomeVendedor)
VALUES ('João Santana')
    , ('Raquel Torres')
    
--SELECT * FROM tbVendedor

INSERT tbVenda(dataVenda, codCliente, codVendedor, totalVenda)
VALUES ('12/09/2021', 1, 1, '165.60')
    , ('10/09/2021', 2, 2, '213.09')
    , ('07/09/2021', 3, 2, '254.20') 
    , ('05/09/2021', 4, 1, '214.50')
    , ('03/09/2021', 5, 2, '281.00')

--SELECT * FROM tbVenda

INSERT tbItensVenda (codVenda, codProduto, quantidadeItens, subTotalItens)
VALUES (1, 2, 1, '65.80')
    , (1, 3, 2, '99.80')
    , (2, 9, 2, '169.50')
    , (2, 5, 1, '43.59')
    , (3, 1, 2, '199.80')
    , (3, 4, 1, '54.90')
    , (4, 6, 2, '145.80')
    , (4, 8, 1, '68.70')
    , (5, 1, 2, '199.80')
    , (5, 7, 1, '81.20')

--SELECT * FROM tbITensVenda


















