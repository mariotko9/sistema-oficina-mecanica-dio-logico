-- Filtro de veículos por ano
SELECT modelo, marca, ano FROM Veiculos
WHERE ano >= 2020;

--Clientes e Veiculos
SELECT 
    c.nome AS Cliente,
    v.placa,
    v.modelo,
    v.marca,
    v.ano
FROM Clientes c
JOIN Veiculos v ON c.id_cliente = v.id_cliente;

-- Atributo derivado: valor total da OS (serviços + peças)
SELECT 
    os.id_os,
    SUM(s.valor) + SUM(p.valor_unitario * op.quantidade) AS valor_total_estimado
FROM OrdensServico os
JOIN OS_Servicos s ON os.id_os = s.id_os
JOIN OS_Pecas op ON os.id_os = op.id_os
JOIN Pecas p ON op.id_peca = p.id_peca
GROUP BY os.id_os;

-- Ordenação de serviços por valor
SELECT 
    descricao,
    valor_referencia
FROM TabelaMaoDeObra
ORDER BY valor_referencia DESC;

-- Agrupamento e filtro com HAVING: OS com mais de 1 serviço autorizado
SELECT 
    id_os,
    COUNT(*) AS servicos_autorizados
FROM OS_Servicos
WHERE autorizado = 1
GROUP BY id_os
HAVING COUNT(*) > 1;

-- Junção complexa: Detalhes da OS com cliente, veículo e equipe
SELECT 
    os.id_os,
    c.nome AS Cliente,
    v.modelo,
    e.nome AS Equipe,
    os.status,
    os.data_emissao
FROM OrdensServico os
JOIN Veiculos v ON os.id_veiculo = v.id_veiculo
JOIN Clientes c ON v.id_cliente = c.id_cliente
JOIN Equipes e ON os.id_equipe = e.id_equipe;

-- Peças mais utilizadas em ordens de serviço
SELECT 
    p.nome AS Peca,
    SUM(op.quantidade) AS Total_Utilizada
FROM OS_Pecas op
JOIN Pecas p ON op.id_peca = p.id_peca
GROUP BY p.nome