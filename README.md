🖼️ 1. Telas do Sistema (Wireframe Conceitual)
🧑‍💼 Tela de Clientes

    Listagem de clientes com busca por nome/email
    Botão "Novo Cliente" para cadastro
    Campos: Nome, Telefone, Email

🚗 Tela de Veículos

    Listagem de veículos com filtro por cliente
    Botão "Novo Veículo"
    Campos: Placa, Modelo, Marca, Ano, Cliente (dropdown)

🛠️ Tela de Ordens de Serviço

    Listagem de OSs com status e data
    Botão "Nova OS"
    Campos: Veículo, Equipe, Data de Emissão, Status

    Subtelas:
    Serviços: Adicionar serviços da TabelaMaoDeObra, marcar como autorizado/executado
    Peças: Adicionar peças e quantidade
    Resumo: Valor total calculado automaticamente

👨‍🔧 Tela de Equipes e Mecânicos

    Cadastro de Equipes
    Vincular Mecânicos à Equipe
    Cadastro de Mecânicos com especialidade

📊 Tela de Relatórios

    OSs por período
    Clientes com mais OSs
    Serviços mais executados
    Peças mais utilizadas

🧪 2. Fluxo de Cadastro de OS

    Selecionar veículo
    Selecionar equipe
    Preencher data e status
    Adicionar serviços da tabela de mão de obra
    Adicionar peças com quantidade
    Salvar OS
    Sistema calcula valor total automaticamente

⚙️ 3. Scripts

Os scripts estão organizados por função:
• ddl.sql: Criação das tabelas
• dml.sql: Inserção de dados de teste
• consultas.sql: Consultas SQL complexas para análise de dados 
• perguntas.md: Perguntas de negócio respondidas pelas queries

🧪 4. Exemplos de Consultas SQL

As queries foram elaboradas para explorar diferentes cláusulas 
• Filtro de veículos por ano
• Atributo derivado: valor total da OS (serviços + peças)
• Ordenação de serviços por valor
• Agrupamento e filtro com HAVING: OS com mais de 1 serviço autorizado
• Junção complexa: Detalhes da OS com cliente, veículo e equipe

📌 5. Observações

• O projeto foi desenvolvido para SQL Server, mas pode ser adaptado para outros SGBDs com ajustes de sintaxe.
