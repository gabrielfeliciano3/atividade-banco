USE agencia_midia_soc;

-- ============================================
-- VIEW 1: Campanhas com informações dos clientes
-- ============================================
CREATE VIEW view_campanhas_clientes AS
SELECT 
    c.nome AS "Nome do Cliente",
    c.empresa AS "Empresa",
    camp.nome AS "Campanha",
    camp.objetivo AS "Objetivo",
    CONCAT('R$ ', FORMAT(camp.orcamento, 2, 'pt_BR')) AS "Orçamento"
FROM Clientes c
INNER JOIN capanha_MS camp ON c.id_cliente = camp.id_camp
ORDER BY c.nome;

-- ============================================
-- VIEW 2: Funcionários da equipe de marketing
-- ============================================
CREATE VIEW view_equipe_marketing AS
SELECT 
    nome AS "Nome do Funcionário",
    cargo AS "Cargo",
    CONCAT('R$ ', FORMAT(salario, 2, 'pt_BR')) AS "Salário",
    telefone AS "Telefone",
    projetos AS "Projeto Atual"
FROM Equipe_marketing
ORDER BY salario DESC;

-- ============================================
-- VIEW 3: Contratos com informações de clientes
-- ============================================
CREATE VIEW view_contratos_clientes AS
SELECT 
    c.nome AS "Cliente",
    c.empresa AS "Empresa",
    cont.termos AS "Termos do Contrato",
    CONCAT('R$ ', FORMAT(cont.custos, 2, 'pt_BR')) AS "Custos",
    DATE_FORMAT(cont.data_hora, '%d/%m/%Y %H:%i') AS "Data do Contrato"
FROM Clientes c
INNER JOIN Contratos_serv cont ON c.id_cliente = cont.id_contrato
ORDER BY cont.data_hora DESC;

-- ============================================
-- VIEW 4: Postagens agendadas
-- ============================================
CREATE VIEW view_postagens_agendadas AS
SELECT 
    id_postagem AS "ID Postagem",
    DATE_FORMAT(data_hora, '%d/%m/%Y') AS "Data Agendada",
    DATE_FORMAT(data_hora, '%H:%i') AS "Horário"
FROM Postagens
ORDER BY data_hora;

-- ============================================
-- VIEW 5: Métricas de desempenho
-- ============================================
CREATE VIEW view_metricas_desempenho AS
SELECT 
    id_metrica AS "ID Métrica",
    engajamento AS "Engajamento",
    alcance AS "Alcance",
    conversoes AS "Conversões",
    impressoes AS "Impressões"
FROM Metricas_desemp
ORDER BY engajamento DESC;

-- ============================================
-- VIEW 6: Fornecedores com custos
-- ============================================
CREATE VIEW view_fornecedores_custos AS
SELECT 
    nome AS "Fornecedor",
    contato AS "Contato",
    CONCAT('R$ ', FORMAT(custos, 2, 'pt_BR')) AS "Custos",
    historico AS "Histórico"
FROM Fornecedores
WHERE custos IS NOT NULL
ORDER BY nome;

-- ============================================
-- VIEW 7: Conteúdo de mídias sociais
-- ============================================
CREATE VIEW view_conteudo_midias AS
SELECT 
    id_cont AS "ID Conteúdo",
    texto AS "Texto",
    hashtags AS "Hashtags",
    imagem AS "Imagem",
    video AS "Vídeo"
FROM conteudo_MS
ORDER BY id_cont;

-- ============================================
-- VIEW 8: Campanhas por período
-- ============================================
CREATE VIEW view_campanhas_periodo AS
SELECT 
    nome AS "Campanha",
    DATE_FORMAT(data_inicio, '%d/%m/%Y') AS "Data Início",
    DATE_FORMAT(data_fim, '%d/%m/%Y') AS "Data Fim",
    DATEDIFF(data_fim, data_inicio) AS "Duração (dias)"
FROM capanha_MS
ORDER BY data_inicio DESC;

-- ============================================
-- VIEW 9: Clientes por tipo de pagamento
-- ============================================
CREATE VIEW view_clientes_pagamento AS
SELECT 
    nome AS "Cliente",
    empresa AS "Empresa",
    pagamento AS "Tipo de Pagamento",
    historico AS "Histórico"
FROM Clientes
ORDER BY pagamento, nome;

-- ============================================
-- VIEW 10: Funcionários por cargo
-- ============================================
CREATE VIEW view_funcionarios_cargo AS
SELECT 
    cargo AS "Cargo",
    COUNT(*) AS "Total de Funcionários",
    CONCAT('R$ ', FORMAT(AVG(salario), 2, 'pt_BR')) AS "Salário Médio"
FROM Equipe_marketing
GROUP BY cargo
ORDER BY COUNT(*) DESC;

-- ============================================
-- VIEW 11: Campanhas com alto orçamento
-- ============================================
CREATE VIEW view_campanhas_alto_orcamento AS
SELECT 
    nome AS "Campanha",
    objetivo AS "Objetivo",
    CONCAT('R$ ', FORMAT(orcamento, 2, 'pt_BR')) AS "Orçamento"
FROM capanha_MS
WHERE orcamento > 10000
ORDER BY orcamento DESC;

-- ============================================
-- VIEW 12: Contratos ativos (últimos 6 meses)
-- ============================================
CREATE VIEW view_contratos_ativos AS
SELECT 
    id_contrato AS "ID Contrato",
    termos AS "Termos",
    obrigacoes AS "Obrigações",
    CONCAT('R$ ', FORMAT(custos, 2, 'pt_BR')) AS "Custos",
    DATE_FORMAT(data_hora, '%d/%m/%Y') AS "Data"
FROM Contratos_serv
WHERE data_hora >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH)
ORDER BY data_hora DESC;
