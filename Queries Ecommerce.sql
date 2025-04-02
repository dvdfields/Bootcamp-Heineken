
-- Quantos pedidos foram feitos por cada cliente?
SELECT Pedido.Cliente_idCliente, COUNT(Pedido.idPedido) AS Total_Pedidos
FROM Pedido
GROUP BY Pedido.Cliente_idCliente;

-- Algum vendedor também é fornecedor?
SELECT Vendedor_Terceiro.Razao_Social 
FROM Vendedor_Terceiro
INNER JOIN Fornecedor 
ON Vendedor_Terceiro.Razao_Social = Fornecedor.Razao_Social;

-- Relação de produtos fornecedores e estoques;
SELECT Produto.idProduto, Produto.Nome AS Produto, 
       Fornecedor.Razao_Social AS Fornecedor, 
       Estoque.Local AS Local_Estoque, 
       Contem.Quantidade
FROM Produto
JOIN Fornece ON Produto.idProduto = Fornece.Produto_idProduto
JOIN Fornecedor ON Fornece.Fornecedor_idFornecedor = Fornecedor.idFornecedor
JOIN Contem ON Produto.idProduto = Contem.Produto_idProduto
JOIN Estoque ON Contem.Estoque_idEstoque = Estoque.idEstoque;

-- Relação de nomes dos fornecedores e nomes dos produtos
SELECT Fornecedor.Razao_Social AS Nome_Fornecedor, Produto.Nome AS Nome_Produto
FROM Fornecedor
JOIN Fornece ON Fornecedor.idFornecedor = Fornece.Fornecedor_idFornecedor
JOIN Produto ON Fornece.Produto_idProduto = Produto.idProduto;
