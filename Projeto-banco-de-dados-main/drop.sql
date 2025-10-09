USE agencia_midia_soc;

DROP VIEW IF EXISTS view_campanhas_clientes;
DROP VIEW IF EXISTS view_equipe_marketing;
DROP VIEW IF EXISTS view_contratos_clientes;
DROP VIEW IF EXISTS view_postagens_agendadas;
DROP VIEW IF EXISTS view_metricas_desempenho;
DROP VIEW IF EXISTS view_fornecedores_custos;
DROP VIEW IF EXISTS view_conteudo_midias;
DROP VIEW IF EXISTS view_campanhas_periodo;
DROP VIEW IF EXISTS view_clientes_pagamento;
DROP VIEW IF EXISTS view_funcionarios_cargo;
DROP VIEW IF EXISTS view_campanhas_alto_orcamento;
DROP VIEW IF EXISTS view_contratos_ativos;

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS plano_de_camp;
DROP TABLE IF EXISTS conteudo_MS;
DROP TABLE IF EXISTS Contratos_acordos_serv;
DROP TABLE IF EXISTS Contratos_serv;
DROP TABLE IF EXISTS Fornecedores;
DROP TABLE IF EXISTS Metricas_desemp;
DROP TABLE IF EXISTS Programacao_postagens;
DROP TABLE IF EXISTS Postagens;
DROP TABLE IF EXISTS Equipe_marketing;
DROP TABLE IF EXISTS Clientes;
DROP TABLE IF EXISTS camp_mid_sociais;
DROP TABLE IF EXISTS capanha_MS;

SET FOREIGN_KEY_CHECKS = 1;