USE bdLojaRoupas

--1) Alterando nomeFabricante Cia da Malha para Turma da Malha

UPDATE tbFabricante
SET nomeFabricante = 'Turma da Malha'
WHERE codFabricante = 3

SELECT * FROM tbFabricante --Selecionar a tabela de fabricante antes e depois do Update para ver atualização

--2) Alterando o valor da venda de clientes código 1 concedendo 10% de desconto

UPDATE tbVenda
SET totalVenda = totalVenda - (totalVenda * 0.1)
WHERE codCliente = 1

SELECT * FROM tbVenda --Selecionar a tabela de venda antes e depois do Update para ver atualização


--3) Aumentando em 20% o preço dos produtos do fabricante de código 2

UPDATE tbProduto
SET precoProduto = precoProduto + (precoProduto * 0.2)
WHERE codFabricante = 2

SELECT * FROM tbProduto --Selecionar a tabela de produto antes e depois do Update para ver atualização do valor 

--4) Diminuindo em 10 unidades a quantidade de estoque do produto de código 3

UPDATE tbProduto
SET estoqueProduto = estoqueProduto - 10
WHERE codProduto = 3

SELECT * FROM tbProduto --Selecionar a tabela de produto antes e depois do Update para ver diminuição do estoque


--5) Removendo o segundo item de venda da venda de código 2

DELETE FROM tbITensVenda
WHERE codItensVenda = 4  

SELECT * FROM tbITensVenda --Selecionar a tabela ItensVenda antes e depois da remoção para ver que o registro foi apagado

--6) Removendo todos os itens da venda código 3

DELETE FROM tbITensVenda
WHERE codVenda = 3

SELECT * FROM tbITensVenda --Selecionar a tabela Venda antes e depois da remoção para ver que os registros foram apagados

--7) Tentando remover o registro de fabricante de código 1

SELECT * FROM tbFabricante --Selecionar a tabela Venda antes de tentar apagar fabricante de código 1

--DELETE FROM tbFabricante
--WHERE codFabricante = 1

SELECT * FROM tbProduto -- Selecionar tabela do produto para verificar a ligação de chave extrangeira
--ligada ao fabricante que tentamos apagar
SELECT * FROM tbITensVenda --Selecionar tabela de ItensVenda para verificar a ligação com os produtos
--que precisariam ser apagados para conseguir excluir a o registro do 1º fabricante.

--Tentei mas não consegui, de toda forma de maneira alguma eu poderia apagar o registro de fabricante 
--de código 1 pois há uma ligação entre ele e os produtos que tem como fabricante identificado pela 
--chave extrangeira de código 1 (nesse caso os produtos de código 1,2,3), e para conseguir apagar a 
--fabricante de código com registro 1, eu precisária ou dar um Update nos produtos a ela ligada 
--trocando para outro fabricante ou apaga-los, e para isso também precisária mexer na tabela de 
--ItensVenda, tendo que apagar os itens da venda com Fk do código de produto que eu teria apagado 
--caso tentasse apagar os produtos para conseguir apagar o fabricante. 