-- Clientes
INSERT INTO Clientes (nome, telefone, email)
VALUES 
('João Silva', '67999999999', 'joao@email.com'),
('Maria Souza', '67988888888', 'maria@email.com'),
('Carlos Mendes', '67977777777', 'carlos@email.com'),
('Ana Paula', '67966666666', 'ana@email.com'),
('Bruno Rocha', '67955555555', 'bruno@email.com'),
('Fernanda Lima', '67944444444', 'fernanda@email.com'),
('Lucas Oliveira', '67933333333', 'lucas@email.com');

-- Veículos
INSERT INTO Veiculos (id_cliente, placa, modelo, marca, ano)
VALUES 
(1, 'ABC1234', 'Civic', 'Honda', 2018),
(2, 'XYZ5678', 'Corolla', 'Toyota', 2020),
(3, 'DEF9876', 'Onix', 'Chevrolet', 2021),
(4, 'GHI6543', 'HB20', 'Hyundai', 2019),
(5, 'JKL3210', 'Gol', 'Volkswagen', 2017),
(6, 'MNO1122', 'Fiesta', 'Ford', 2016),
(7, 'PQR3344', 'Compass', 'Jeep', 2022);

-- Mecânicos
INSERT INTO Mecanicos (nome, endereco, especialidade)
VALUES 
('Carlos Lima', 'Rua A, 123', 'Motor'),
('Ana Costa', 'Rua B, 456', 'Suspensão'),
('Pedro Martins', 'Rua C, 789', 'Freios'),
('Juliana Alves', 'Rua D, 101', 'Elétrica'),
('Rafael Torres', 'Rua E, 202', 'Transmissão'),
('Beatriz Souza', 'Rua F, 303', 'Pintura'),
('Eduardo Nunes', 'Rua G, 404', 'Diagnóstico');

-- Equipes
INSERT INTO Equipes (nome)
VALUES 
('Equipe Alpha'),
('Equipe Beta'),
('Equipe Gamma'),
('Equipe Delta'),
('Equipe Omega'),
('Equipe Sigma'),
('Equipe Zeta');

-- Vincular Mecânicos às Equipes
INSERT INTO Equipe_Mecanicos (id_equipe, id_mecanico)
VALUES 
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7);

-- Tabela de Mão de Obra
INSERT INTO TabelaMaoDeObra (descricao, valor_referencia)
VALUES 
('Troca de óleo', 100.00),
('Alinhamento', 150.00),
('Balanceamento', 120.00),
('Revisão completa', 300.00),
('Troca de freios', 200.00),
('Diagnóstico eletrônico', 180.00),
('Limpeza de bico', 130.00);

-- Peças
INSERT INTO Pecas (nome, valor_unitario)
VALUES 
('Filtro de óleo', 30.00),
('Pneu', 300.00),
('Pastilha de freio', 120.00),
('Bateria', 450.00),
('Velas de ignição', 80.00),
('Amortecedor', 250.00),
('Correia dentada', 200.00);

-- Ordens de Serviço
INSERT INTO OrdensServico (id_veiculo, id_equipe, data_emissao, status, valor_total)
VALUES 
(1, 1, '2025-08-01', 'Aberta', 0.00),
(2, 2, '2025-08-02', 'Fechada', 0.00),
(3, 3, '2025-08-03', 'Aberta', 0.00),
(4, 4, '2025-08-04', 'Fechada', 0.00),
(5, 5, '2025-08-05', 'Aberta', 0.00),
(6, 6, '2025-08-06', 'Fechada', 0.00),
(7, 7, '2025-08-07', 'Aberta', 0.00);

-- Serviços em OS
INSERT INTO OS_Servicos (id_os, id_servico, descricao, valor, autorizado, executado)
VALUES 
(1, 1, 'Troca de óleo completa', 100.00, 1, 1),
(1, 2, 'Alinhamento básico', 150.00, 1, 0),
(2, 3, 'Balanceamento traseiro', 120.00, 1, 1),
(3, 4, 'Revisão geral', 300.00, 1, 1),
(4, 5, 'Troca de freios dianteiros', 200.00, 1, 1),
(5, 6, 'Diagnóstico eletrônico', 180.00, 1, 0),
(6, 7, 'Limpeza de bico injetor', 130.00, 1, 1);

-- Peças em OS
INSERT INTO OS_Pecas (id_os, id_peca, quantidade)
VALUES 
(1, 1, 1),
(1, 2, 2),
(2, 3, 1),
(3, 4, 1),
(4, 5, 4),
(5, 6, 2),
(6, 7, 1);
