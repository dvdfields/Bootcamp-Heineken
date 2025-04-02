-- Inserção de dados para a tabela Cliente
INSERT INTO Cliente (Identificacao) VALUES 
('12345678901'), ('98765432100'), ('11223344556'), ('22334455667'), ('33445566778'),
('44556677889'), ('55667788990'), ('66778899001'), ('77889900112'), ('88990011223');

-- Inserção de dados para a tabela Cliente_PF
INSERT INTO Cliente_PF (CPF, Endereco, Nome, NomedoMeio, Sobrenome, DataNascimento, Cliente_idCliente) VALUES 
('12345678901', 'Rua A, 123', 'João', 'J.', 'Silva', '1990-05-20', 1),
('98765432100', 'Rua B, 456', 'Maria', 'M.', 'Souza', '1985-08-15', 2),
('11223344556', 'Rua C, 789', 'Carlos', 'C.', 'Pereira', '1992-11-30', 3),
('22334455667', 'Av. D, 101', 'Ana', 'A.', 'Ferreira', '1988-04-25', 4),
('33445566778', 'Av. E, 202', 'Pedro', 'P.', 'Almeida', '1995-09-10', 5),
('44556677889', 'Rua F, 303', 'Fernanda', 'F.', 'Ribeiro', '1993-07-18', 6),
('55667788990', 'Av. G, 404', 'Ricardo', 'R.', 'Mendes', '1980-12-05', 7),
('66778899001', 'Rua H, 505', 'Juliana', 'J.', 'Lima', '1991-03-22', 8),
('77889900112', 'Av. I, 606', 'Gabriel', 'G.', 'Martins', '1997-06-14', 9),
('88990011223', 'Rua J, 707', 'Patrícia', 'P.', 'Gonçalves', '1986-02-09', 10);

-- Inserção de dados para a tabela Cliente_PJ
INSERT INTO Cliente_PJ (CNPJ, Nome, Endereco) VALUES 
('11222333444455', 'Empresa A', 'Av. Comercial, 100'),
('22333444555666', 'Empresa B', 'Rua Industrial, 200'),
('33444555666777', 'Empresa C', 'Av. Empresarial, 300'),
('44555666777888', 'Empresa D', 'Rua Comercial, 400'),
('55666777888999', 'Empresa E', 'Av. Industrial, 500'),
('66777888999000', 'Empresa F', 'Rua dos Negócios, 600'),
('77888999000111', 'Empresa G', 'Av. Corporativa, 700'),
('88999000111222', 'Empresa H', 'Rua Financeira, 800'),
('99000111222333', 'Empresa I', 'Av. Executiva, 900'),
('10011222333444', 'Empresa J', 'Rua Comercial, 1000');

-- Inserção de dados para a tabela Produto
INSERT INTO Produto (Descricao, Valor, Categoria, Nome) VALUES 
('Smartphone 128GB', 1500.00, 'Eletrônicos', 'Smartphone X'),
('Notebook 15.6"', 3500.00, 'Informática', 'Notebook Pro'),
('Geladeira 400L', 2800.00, 'Eletrodomésticos', 'Geladeira Frost'),
('TV 55" 4K', 2200.00, 'Eletrônicos', 'Smart TV 4K'),
('Fone Bluetooth', 250.00, 'Acessórios', 'Fone Sem Fio'),
('Mouse Gamer', 120.00, 'Informática', 'Mouse Pro'),
('Teclado Mecânico', 320.00, 'Informática', 'Teclado RGB'),
('Câmera de Segurança', 600.00, 'Segurança', 'Câmera Wi-Fi'),
('Impressora Multifuncional', 900.00, 'Escritório', 'Impressora 3 em 1'),
('Micro-ondas 30L', 500.00, 'Eletrodomésticos', 'Micro-ondas Digital');

-- Inserção de dados para a tabela Pedido
INSERT INTO Pedido (Data, Status, Cliente_idCliente, Frete, Descricao) VALUES 
('2025-04-02', 'Pendente', 1, 15.00, 'Pedido de teste 1'),
('2025-04-03', 'Pago', 2, 20.00, 'Pedido de teste 2'),
('2025-04-04', 'Cancelado', 3, 10.00, 'Pedido de teste 3'),
('2025-04-05', 'Enviado', 4, 25.00, 'Pedido de teste 4'),
('2025-04-06', 'Entregue', 5, 30.00, 'Pedido de teste 5'),
('2025-04-07', 'Pendente', 6, 12.00, 'Pedido de teste 6'),
('2025-04-08', 'Pago', 7, 18.00, 'Pedido de teste 7'),
('2025-04-09', 'Cancelado', 8, 22.00, 'Pedido de teste 8'),
('2025-04-10', 'Enviado', 9, 28.00, 'Pedido de teste 9'),
('2025-04-11', 'Entregue', 10, 35.00, 'Pedido de teste 10');

-- Inserção de dados para a tabela Relacao_Produto_Pedido
INSERT INTO Relacao_Produto_Pedido (Produto_idProduto, Pedido_idPedido, Quantidade, Status) VALUES 
(1, 1, 2, 'Reservado'),
(2, 2, 1, 'Enviado'),
(3, 3, 3, 'Cancelado'),
(4, 4, 1, 'Enviado'),
(5, 5, 2, 'Entregue'),
(6, 6, 4, 'Reservado'),
(7, 7, 1, 'Pago'),
(8, 8, 2, 'Cancelado'),
(9, 9, 3, 'Enviado'),
(10, 10, 1, 'Entregue');


-- Inserção de dados para a tabela Estoque
INSERT INTO Estoque (Local) VALUES 
('Centro de Distribuição A'), ('Centro de Distribuição B'), ('Loja 1'), ('Loja 2'), ('Loja 3'),
('Centro de Distribuição C'), ('Armazém 1'), ('Armazém 2'), ('Loja 4'), ('Loja 5');

-- Inserção de dados para a tabela Contém
INSERT INTO Contem (Estoque_idEstoque, Produto_idProduto, Quantidade) VALUES 
(1, 1, 50), (2, 2, 30), (3, 3, 20), (4, 4, 25), (5, 5, 40),
(6, 6, 35), (7, 7, 45), (8, 8, 60), (9, 9, 15), (10, 10, 10);

-- Inserção de dados para a tabela Pagamento
INSERT INTO Pagamento (Meio_Pagamento, Pedido_idPedido, Pedido_Cliente_idCliente) VALUES 
('Cartão', 1, 1), ('Boleto', 2, 2), ('Cartão', 3, 3), ('Boleto', 4, 4), ('Cartão', 5, 5),
('Cartão', 6, 6), ('Boleto', 7, 7), ('Cartão', 8, 8), ('Boleto', 9, 9), ('Cartão', 10, 10);

-- Inserção de dados para a tabela Cartão
INSERT INTO Cartao (Nome_Cartao, Validade_Cartao, Numero_Cartao, Pagamento_idPagamento) VALUES 
('João Silva', '12/26', '1111222233334444', 1),
('Maria Souza', '05/25', '5555666677778888', 3),
('Carlos Pereira', '07/24', '9999000011112222', 5),
('Ana Ferreira', '11/27', '3333444455556666', 6),
('Pedro Almeida', '08/26', '7777888899990000', 9);

-- Inserção de dados para a tabela Boleto
INSERT INTO Boleto (Data_Vencimento, Valor, Pagamento_idPagamento) VALUES 
('2025-05-01', 1520.00, 2), ('2025-05-02', 3500.00, 4), ('2025-05-03', 900.00, 6),
('2025-05-04', 2200.00, 8), ('2025-05-05', 1800.00, 10);

-- Inserção de dados para a tabela Entrega
INSERT INTO Entrega (Codigo_Rastreio, Status, Pedido_idPedido) VALUES 
('AA123456BR', 'Enviado', 4), ('BB654321BR', 'Entregue', 5), ('CC789012BR', 'Pendente', 3),
('DD987654BR', 'Saiu para entrega', 2), ('EE111222BR', 'Aguardando envio', 10);

-- Inserção de dados para Fornecedor e Fornece
INSERT INTO Fornecedor (Razao_Social, CNPJ, Contato) VALUES 
('Fornecedor A', '12345678000101', 'contato@fornecedorA.com'),
('Fornecedor B', '98765432000102', 'suporte@fornecedorB.com'),
('Fornecedor C', '45678912000103', 'vendas@fornecedorC.com');

INSERT INTO Fornece (Fornecedor_idFornecedor, Produto_idProduto) VALUES 
(1, 1), (1, 2), (2, 3), (2, 4), (3, 5), (3, 6), (1, 7), (2, 8), (3, 9), (1, 10);

-- Inserção de dados para Vendedor_Terceiro e Produtos_Por_Vendedor
INSERT INTO Vendedor_Terceiro (Razao_Social, Local, Nome_Fantasia, Endereco) VALUES 
('Vendedor A', 'São Paulo', 'Loja A', 'Rua A, 100'),
('Vendedor B', 'Rio de Janeiro', 'Loja B', 'Rua B, 200'),
('Vendedor C', 'Belo Horizonte', 'Loja C', 'Rua C, 300');

INSERT INTO Produtos_Por_Vendedor (Vendedor_Terceiro_idVendedor_Terceiro, Produto_idProduto, Quantidade) VALUES 
(1, 1, 10), (1, 3, 5), (2, 4, 8), (2, 6, 12), (3, 7, 15), (3, 9, 20), (1, 2, 7), (2, 5, 9), (3, 8, 14), (1, 10, 6);


