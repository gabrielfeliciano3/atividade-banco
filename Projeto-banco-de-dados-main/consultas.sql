USE agencia_midia_soc;


-- PERGUNTA 1: Quais são as campanhas de cada cliente?

SELECT c.nome AS "Cliente", c.empresa AS "Empresa",
       camp.nome AS "Campanha", camp.objetivo AS "Objetivo"
FROM Clientes c
INNER JOIN capanha_MS camp ON c.id_cliente = camp.id_camp
ORDER BY c.nome;


-- PERGUNTA 2: Quais são os contratos firmados por cada cliente?

SELECT c.nome AS "Cliente", cont.termos AS "Termos",
       cont.custos AS "Custos",
       DATE_FORMAT(cont.data_hora, '%d/%m/%Y') AS "Data"
FROM Clientes c
INNER JOIN Contratos_serv cont ON c.id_cliente = cont.id_contrato
ORDER BY cont.data_hora DESC;


-- PERGUNTA 3: Quais campanhas têm orçamento acima da média?

SELECT nome AS "Campanha", objetivo AS "Objetivo",
       CONCAT('R$ ', FORMAT(orcamento, 2, 'pt_BR')) AS "Orçamento"
FROM capanha_MS
WHERE orcamento > (SELECT AVG(orcamento) FROM capanha_MS)
ORDER BY orcamento DESC;


-- PERGUNTA 4: Quais funcionários ganham acima da média salarial?

SELECT nome AS "Funcionário", cargo AS "Cargo",
       CONCAT('R$ ', FORMAT(salario, 2, 'pt_BR')) AS "Salário"
FROM Equipe_marketing
WHERE salario > (SELECT AVG(salario) FROM Equipe_marketing)
ORDER BY salario DESC;


-- PERGUNTA 5: Como visualizar as campanhas com datas no formato brasileiro?

SELECT nome AS "Campanha",
       DATE_FORMAT(data_inicio, '%d/%m/%Y') AS "Data Início",
       DATE_FORMAT(data_fim, '%d/%m/%Y') AS "Data Fim"
FROM capanha_MS
ORDER BY data_inicio DESC;


-- PERGUNTA 6: Como listar os clientes em ordem alfabética?

SELECT nome AS "Cliente", empresa AS "Empresa",
       pagamento AS "Pagamento", historico AS "Histórico"
FROM Clientes
ORDER BY nome;


-- PERGUNTA 7: Como exibir o conteúdo de mídias sociais em letras maiúsculas?

SELECT UPPER(texto) AS "Texto", hashtags AS "Hashtags",
       imagem AS "Imagem", video AS "Vídeo"
FROM conteudo_MS
ORDER BY id_cont;


-- PERGUNTA 8: Como visualizar os contratos com data e hora no formato brasileiro?

SELECT termos AS "Termos", obrigacoes AS "Obrigações",
       custos AS "Custos",
       DATE_FORMAT(data_hora, '%d/%m/%Y - %H:%i') AS "Data e Hora"
FROM Contratos_serv
ORDER BY data_hora DESC;


-- PERGUNTA 9: Em quais dias da semana as postagens foram agendadas?

SELECT id_postagem AS "ID",
       DATE_FORMAT(data_hora, '%d/%m/%Y') AS "Data",
       DAYNAME(data_hora) AS "Dia da Semana"
FROM Postagens
ORDER BY data_hora;

-- ============================================-- PERGUNTA 10: Quais métricas apresentam alto engajamento?

SELECT engajamento AS "Engajamento", alcance AS "Alcance",
       conversoes AS "Conversões", impressoes AS "Impressões"
FROM Metricas_desemp
WHERE engajamento IN ('Alto', 'Muito Alto')
ORDER BY id_metrica;


-- PERGUNTA 11: Quais fornecedores têm custos registrados e qual o valor?

SELECT nome AS "Fornecedor", contato AS "Contato",
       custos AS "Custos", historico AS "Histórico"
FROM Fornecedores
WHERE custos IS NOT NULL
ORDER BY custos DESC;


-- PERGUNTA 12: Quais campanhas estão em andamento no momento?

SELECT nome AS "Campanha", objetivo AS "Objetivo",
       DATEDIFF(data_fim, CURDATE()) AS "Dias Restantes"
FROM capanha_MS
WHERE data_inicio <= CURDATE() AND data_fim >= CURDATE()
ORDER BY data_fim;


-- PERGUNTA 13: Quais clientes possuem campanhas cadastradas?

SELECT nome AS "Cliente", empresa AS "Empresa"
FROM Clientes
WHERE id_cliente IN (SELECT id_camp FROM capanha_MS)
ORDER BY nome;


-- PERGUNTA 14: Quantos funcionários existem em cada cargo?

SELECT cargo AS "Cargo", COUNT(*) AS "Total Funcionários"
FROM Equipe_marketing
GROUP BY cargo
ORDER BY COUNT(*) DESC;


-- PERGUNTA 15: Quais campanhas já foram finalizadas?

SELECT nome AS "Campanha",
       DATE_FORMAT(data_fim, '%d/%m/%Y') AS "Data Fim",
       orcamento AS "Orçamento"
FROM capanha_MS
WHERE data_fim < CURDATE()
ORDER BY data_fim DESC;

-- PERGUNTA 16: Quais contratos têm custos acima da média?

SELECT termos AS "Termos", custos AS "Custos",
       DATE_FORMAT(data_hora, '%d/%m/%Y') AS "Data"
FROM Contratos_serv
WHERE custos > (SELECT AVG(custos) FROM Contratos_serv WHERE custos IS NOT NULL)
ORDER BY custos DESC;

-- PERGUNTA 17: Como os funcionários estão distribuídos por estado civil?

SELECT estado_civil AS "Estado Civil", COUNT(*) AS "Total"
FROM Equipe_marketing
GROUP BY estado_civil
ORDER BY COUNT(*) DESC;

-- PERGUNTA 18: Quais conteúdos possuem hashtags relacionadas a novidades ou promoções?

SELECT texto AS "Texto", hashtags AS "Hashtags"
FROM conteudo_MS
WHERE hashtags LIKE '%novidades%' OR hashtags LIKE '%promoção%'
ORDER BY id_cont;

-- PERGUNTA 19: Quais são as 5 campanhas com maior duração?

SELECT nome AS "Campanha",
       DATEDIFF(data_fim, data_inicio) AS "Duração (dias)"
FROM capanha_MS
ORDER BY DATEDIFF(data_fim, data_inicio) DESC
LIMIT 5;


-- PERGUNTA 20: Qual é o total de orçamento investido por cada cliente?

SELECT c.nome AS "Cliente",
       COUNT(camp.id_camp) AS "Total Campanhas",
       SUM(camp.orcamento) AS "Orçamento Total"
FROM Clientes c
INNER JOIN capanha_MS camp ON c.id_cliente = camp.id_camp
GROUP BY c.nome
ORDER BY SUM(camp.orcamento) DESC;


-- PERGUNTA 21: Quais postagens estão agendadas para os próximos 30 dias?

SELECT id_postagem AS "ID",
       DATE_FORMAT(data_hora, '%d/%m/%Y %H:%i') AS "Data e Hora"
FROM Postagens
WHERE data_hora BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 30 DAY)
ORDER BY data_hora;


-- PERGUNTA 22: Quais são os fornecedores mais antigos (desde 2018-2019)?

SELECT nome AS "Fornecedor", historico AS "Histórico"
FROM Fornecedores
WHERE historico LIKE '%2018%' OR historico LIKE '%2019%'
ORDER BY nome;

