USE bdEstoque

--1) Alterando o preço dos produtos da Unilever com aumento de 10%

UPDATE tbProduto
SET valorProduto = valorProduto + (valorProduto * 0.1)
WHERE codFabricante = 1

--2) Alterando o preço dos produtos da P&G a diminuição de 7%

UPDATE tbProduto
SET valorProduto = valorProduto - (valorProduto * 0.07)
WHERE codFabricante = 2

--3) Diminuindo em 30 unidades a quantidade de estoque do produto do atacadão

UPDATE tbProduto
SET quantidadeProduto = quantidadeProduto - 30
WHERE codFornecedor = 1

--4) Alterando o nome da cliente Adriana 

UPDATE tbCliente
SET nomeCliente = 'Adriana Nogueira Silva Campos'
WHERE codCliente = 5

--5) Concedendo 5% de desconto no valor total das vendas de fev de 2014

UPDATE tbVenda
SET valorTotalVenda = valorTotalVenda - (valorTotalVenda * 0.05)
WHERE codVenda <= 4

--6) Apagando itens de venda do produto Salsicha Hot Dog Sadia

DELETE FROM tbITensVenda
WHERE codProduto = 5

--7) Alterando o sexo f para fem

UPDATE tbCliente
SET sexoCliente = 'fem'
WHERE codCliente = 2 OR codCliente = 4 OR codCliente = 5

--8) Alterando o sexo m para masc

UPDATE tbCliente
SET sexoCliente = 'masc'
WHERE codCliente = 1 OR codCliente = 3 OR codCliente = 6

--9) Alterando o email do cliente armando josé

UPDATE tbCliente
SET emailCliente = 'asantana@ig.com.br'
WHERE codCliente = 1

--10) Diminuindo em 10% a quantidade de todos os produtos unilever no estoque

UPDATE tbProduto
SET quantidadeProduto = quantidadeProduto - (quantidadeProduto * 0.10)
WHERE codFabricante = 1

--11) Aumentando em 5% o preço dos amaciantes em estoque

UPDATE tbProduto
SET valorProduto = valorProduto + (valorProduto * 0.05)
WHERE codProduto = 1 AND codProduto = 2

--12) Aumentando em 10% o preço de todos os produtos que tenham sadia no nome

UPDATE tbProduto
SET valorProduto = valorProduto + (valorProduto * 0.10)
WHERE codProduto = 5 AND codProduto = 7

--13) Concedendo 10% de desconto nos produtos da seda

UPDATE tbProduto
SET valorProduto = valorProduto - (valorProduto * 0.10)
WHERE codProduto = 9 AND codProduto = 10

--14) Tentando apagar o registro da cliente Sheila Carvalho

--DELETE FROM tbCliente
--WHERE codCliente = 2

--SELECT * FROM tbProduto

-- R: De uma forma geral o que aconteceu foi que conforme há ligações
-- da chave estrangeira do cliente em outras tabelas ao tentar apagar 
--um desses registros, gera conflito já que de forma alguma podemos/conseguimos 
--apagar um registro que esteja associado a outro.