-- Criação do banco de dados para o cenário de E-commerce
create database ecommerce;
use ecommerce;


CREATE TABLE Cliente (
    idCliente INT PRIMARY KEY AUTO_INCREMENT,
    Identificacao VARCHAR(14) NOT NULL
);

CREATE TABLE Cliente_PF (
    idCliente_PF INT PRIMARY KEY AUTO_INCREMENT,
    CPF CHAR(11) UNIQUE NOT NULL,
    Endereco VARCHAR(45),
    Nome VARCHAR(45),
    NomeSocial VARCHAR(45),
    Sobrenome VARCHAR(45),
    DataNascimento DATE,
    Cliente_idCliente INT,
    FOREIGN KEY (Cliente_idCliente) REFERENCES Cliente(idCliente)
);

CREATE TABLE Cliente_PJ (
    idCliente_PJ INT PRIMARY KEY AUTO_INCREMENT,
    CNPJ VARCHAR(14) UNIQUE NOT NULL,
    Nome VARCHAR(45),
    Endereco VARCHAR(45),
    Cliente_idCliente INT,
    FOREIGN KEY (Cliente_idCliente) REFERENCES Cliente(idCliente)
);

CREATE TABLE Pedido (
    idPedido INT PRIMARY KEY AUTO_INCREMENT,
    Data DATE NOT NULL,
    Status ENUM('Pendente', 'Pago', 'Cancelado', 'Enviado', 'Entregue') NOT NULL,
    Cliente_idCliente INT,
    Frete FLOAT,
    Descricao VARCHAR(45),
    FOREIGN KEY (Cliente_idCliente) REFERENCES Cliente(idCliente)
);

CREATE TABLE Produto (
    idProduto INT PRIMARY KEY AUTO_INCREMENT,
    Descricao VARCHAR(45),
    Valor FLOAT NOT NULL,
    Categoria VARCHAR(45),
    Nome VARCHAR(20) NOT NULL
);

CREATE TABLE Relacao_Produto_Pedido (
    Produto_idProduto INT,
    Pedido_idPedido INT,
    Quantidade INT NOT NULL,
    Status ENUM('Reservado', 'Enviado', 'Cancelado'),
    PRIMARY KEY (Produto_idProduto, Pedido_idPedido),
    FOREIGN KEY (Produto_idProduto) REFERENCES Produto(idProduto),
    FOREIGN KEY (Pedido_idPedido) REFERENCES Pedido(idPedido)
);

CREATE TABLE Estoque (
    idEstoque INT PRIMARY KEY AUTO_INCREMENT,
    Local VARCHAR(45) NOT NULL
);

CREATE TABLE Contem (
    Estoque_idEstoque INT,
    Produto_idProduto INT,
    Quantidade INT NOT NULL,
    PRIMARY KEY (Estoque_idEstoque, Produto_idProduto),
    FOREIGN KEY (Estoque_idEstoque) REFERENCES Estoque(idEstoque),
    FOREIGN KEY (Produto_idProduto) REFERENCES Produto(idProduto)
);

CREATE TABLE Pagamento (
    idPagamento INT PRIMARY KEY AUTO_INCREMENT,
    Meio_Pagamento VARCHAR(45) NOT NULL,
    Pedido_idPedido INT,
    Pedido_Cliente_idCliente INT,
    FOREIGN KEY (Pedido_idPedido) REFERENCES Pedido(idPedido),
    FOREIGN KEY (Pedido_Cliente_idCliente) REFERENCES Cliente(idCliente)
);

CREATE TABLE Cartao (
    idCartao INT PRIMARY KEY AUTO_INCREMENT,
    Nome_Cartao VARCHAR(45),
    Validade_Cartao VARCHAR(45),
    Numero_Cartao VARCHAR(45) UNIQUE,
    Pagamento_idPagamento INT,
    FOREIGN KEY (Pagamento_idPagamento) REFERENCES Pagamento(idPagamento)
);

CREATE TABLE Boleto (
    idBoleto INT PRIMARY KEY AUTO_INCREMENT,
    Data_Vencimento DATE NOT NULL,
    Valor FLOAT NOT NULL,
    Pagamento_idPagamento INT,
    FOREIGN KEY (Pagamento_idPagamento) REFERENCES Pagamento(idPagamento)
);

CREATE TABLE Entrega (
    idEntrega INT PRIMARY KEY AUTO_INCREMENT,
    Codigo_Rastreio VARCHAR(45),
    Status VARCHAR(45),
    Pedido_idPedido INT,
    FOREIGN KEY (Pedido_idPedido) REFERENCES Pedido(idPedido)
);

CREATE TABLE Fornecedor (
    idFornecedor INT PRIMARY KEY AUTO_INCREMENT,
    Razao_Social VARCHAR(45) NOT NULL,
    CNPJ VARCHAR(45) UNIQUE NOT NULL,
    Contato VARCHAR(45)
);

CREATE TABLE Fornece (
    Fornecedor_idFornecedor INT,
    Produto_idProduto INT,
    PRIMARY KEY (Fornecedor_idFornecedor, Produto_idProduto),
    FOREIGN KEY (Fornecedor_idFornecedor) REFERENCES Fornecedor(idFornecedor),
    FOREIGN KEY (Produto_idProduto) REFERENCES Produto(idProduto)
);

CREATE TABLE Vendedor_Terceiro (
    idVendedor_Terceiro INT PRIMARY KEY AUTO_INCREMENT,
    Razao_Social VARCHAR(45) NOT NULL,
    Local VARCHAR(45),
    Nome_Fantasia VARCHAR(45),
    Endereco VARCHAR(45)
);

CREATE TABLE Produtos_Por_Vendedor (
    Vendedor_Terceiro_idVendedor_Terceiro INT,
    Produto_idProduto INT,
    Quantidade INT NOT NULL,
    PRIMARY KEY (Vendedor_Terceiro_idVendedor_Terceiro, Produto_idProduto),
    FOREIGN KEY (Vendedor_Terceiro_idVendedor_Terceiro) REFERENCES Vendedor_Terceiro(idVendedor_Terceiro),
    FOREIGN KEY (Produto_idProduto) REFERENCES Produto(idProduto)
);




