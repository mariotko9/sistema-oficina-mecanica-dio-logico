-- Clientes
CREATE TABLE Clientes (
    id_cliente INT IDENTITY(1,1) PRIMARY KEY,
    nome VARCHAR(100),
    telefone VARCHAR(20),
    email VARCHAR(100)
);

-- Veículos
CREATE TABLE Veiculos (
    id_veiculo INT IDENTITY(1,1) PRIMARY KEY,
    id_cliente INT,
    placa VARCHAR(10),
    modelo VARCHAR(50),
    marca VARCHAR(50),
    ano INT,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

-- Mecânicos
CREATE TABLE Mecanicos (
    id_mecanico INT IDENTITY(1,1) PRIMARY KEY,
    nome VARCHAR(100),
    endereco VARCHAR(150),
    especialidade VARCHAR(50)
);

-- Equipes
CREATE TABLE Equipes (
    id_equipe INT IDENTITY(1,1) PRIMARY KEY,
    nome VARCHAR(100)
);

-- Relação Equipe-Mecânicos
CREATE TABLE Equipe_Mecanicos (
    id_equipe INT,
    id_mecanico INT,
    PRIMARY KEY (id_equipe, id_mecanico),
    FOREIGN KEY (id_equipe) REFERENCES Equipes(id_equipe),
    FOREIGN KEY (id_mecanico) REFERENCES Mecanicos(id_mecanico)
);

-- Tabela de Mão de Obra
CREATE TABLE TabelaMaoDeObra (
    id_servico INT IDENTITY(1,1) PRIMARY KEY,
    descricao VARCHAR(100),
    valor_referencia DECIMAL(10,2)
);

-- Pecas
CREATE TABLE Pecas (
    id_peca INT IDENTITY(1,1) PRIMARY KEY,
    nome VARCHAR(100),
    valor_unitario DECIMAL(10,2)
);

-- Ordens de Serviço
CREATE TABLE OrdensServico (
    id_os INT IDENTITY(1,1) PRIMARY KEY,
    id_veiculo INT,
    id_equipe INT,
    data_emissao DATE,
    status VARCHAR(20),
    valor_total DECIMAL(10,2),
    FOREIGN KEY (id_veiculo) REFERENCES Veiculos(id_veiculo),
    FOREIGN KEY (id_equipe) REFERENCES Equipes(id_equipe)
);

-- Serviços em OS
CREATE TABLE OS_Servicos (
    id_os INT,
    id_servico INT,
    descricao VARCHAR(100),
    valor DECIMAL(10,2),
    autorizado BIT,
    executado BIT,
    PRIMARY KEY (id_os, id_servico),
    FOREIGN KEY (id_os) REFERENCES OrdensServico(id_os),
    FOREIGN KEY (id_servico) REFERENCES TabelaMaoDeObra(id_servico)
);

-- Peças em OS
CREATE TABLE OS_Pecas (
    id_os INT,
    id_peca INT,
    quantidade INT,
    PRIMARY KEY (id_os, id_peca),
    FOREIGN KEY (id_os) REFERENCES OrdensServico(id_os),
    FOREIGN KEY (id_peca) REFERENCES Pecas(id_peca)
);

