CREATE DATABASE oficina_mecanica_db;
GO
USE oficina_mecanica_db;
GO

CREATE TABLE clientes
(
    id_cliente INT IDENTITY(1,1) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(14) NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    email VARCHAR(100) NOT NULL,
    endereco VARCHAR(120) NOT NULL,
    cidade VARCHAR(60) NOT NULL,
    CONSTRAINT PK_clientes PRIMARY KEY (id_cliente),
    CONSTRAINT UQ_clientes_cpf UNIQUE (cpf)
);

CREATE TABLE veiculos
(
    id_veiculo INT IDENTITY(1,1) NOT NULL,
    id_cliente INT NOT NULL,
    placa CHAR(7) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    ano_fabricacao INT NOT NULL,
    chassi CHAR(17) NOT NULL,
    CONSTRAINT PK_veiculos PRIMARY KEY (id_veiculo),
    CONSTRAINT UQ_veiculos_placa UNIQUE (placa),
    CONSTRAINT UQ_veiculos_chassi UNIQUE (chassi),
    CONSTRAINT FK_veiculos_clientes FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

CREATE TABLE mecanicos
(
    id_mecanico INT IDENTITY(1,1) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(14) NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    email VARCHAR(100) NOT NULL,
    data_contratacao DATE NOT NULL,
    funcao VARCHAR(80) NOT NULL,
    CONSTRAINT PK_mecanicos PRIMARY KEY (id_mecanico),
    CONSTRAINT UQ_mecanicos_cpf UNIQUE (cpf)
);

CREATE TABLE ordens_servico
(
    id_ordem INT IDENTITY(1,1) NOT NULL,
    id_veiculo INT NOT NULL,
    id_mecanico INT NOT NULL,
    data_abertura DATETIME NOT NULL,
    estimativa_entrega DATETIME NOT NULL,
    descricao VARCHAR(200) NOT NULL,
    valor_total DECIMAL(10,2) NOT NULL,
    status VARCHAR(20) NOT NULL,
    CONSTRAINT PK_ordens PRIMARY KEY (id_ordem),
    CONSTRAINT FK_ordens_veiculos FOREIGN KEY (id_veiculo) REFERENCES veiculos(id_veiculo),
    CONSTRAINT FK_ordens_mecanicos FOREIGN KEY (id_mecanico) REFERENCES mecanicos(id_mecanico)
);

