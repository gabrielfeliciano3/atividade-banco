-- Inserir dados na tabela 'capanha_MS'
INSERT INTO capanha_MS (nome, objetivo, data_inicio, data_fim, orcamento)
VALUES 
('Campanha de Inverno', 'Aumentar vendas', '2025-06-01', '2025-06-30', '10000'),
('Campanha de Natal', 'Promoção de Natal', '2025-12-01', '2025-12-25', '15000'),
('Campanha de Verão', 'Promoção de produtos de verão', '2025-01-01', '2025-01-31', '8000'),
('Campanha de Páscoa', 'Aumentar engajamento', '2025-04-01', '2025-04-15', '5000'),
('Campanha de Black Friday', 'Desconto em produtos selecionados', '2025-11-01', '2025-11-30', '20000');

-- Inserir dados na tabela 'Clientes'
INSERT INTO Clientes (nome, empresa, pagamento, historico)
VALUES 
('João Silva', 'TechSolutions', 'Mensal', 'Cliente desde 2020'),
('Maria Oliveira', 'MarketPro', 'Bimestral', 'Cliente desde 2022'),
('Carlos Souza', 'Fashion Trends', 'Anual', 'Cliente desde 2021'),
('Ana Costa', 'Foodie Delights', 'Mensal', 'Cliente desde 2023'),
('Ricardo Lima', 'AutoParts Ltda', 'Mensal', 'Cliente desde 2024');

-- Inserir dados na tabela 'Equipe_marketing'
INSERT INTO Equipe_marketing (nome, cargo, genero, data_nasc, estado_civil, salario, telefone, projetos)
VALUES 
('Lucas Almeida', 'Gerente de Marketing', 'Masculino', '1990-05-15', 'Solteiro', '5000', '988888888', 'Campanha de Inverno'),
('Fernanda Ribeiro', 'Coordenadora de Social Media', 'Feminino', '1988-08-22', 'Casada', '4000', '977777777', 'Campanha de Natal'),
('Pedro Santos', 'Analista de Marketing', 'Masculino', '1995-03-10', 'Casado', '3500', '966666666', 'Campanha de Verão'),
('Larissa Costa', 'Designer Gráfico', 'Feminino', '1992-07-30', 'Solteira', '3000', '955555555', 'Campanha de Páscoa'),
('Giovanni Pereira', 'Especialista em SEO', 'Masculino', '1987-11-11', 'Divorciado', '4500', '944444444', 'Campanha de Black Friday');

-- Inserir dados na tabela 'Postagens'
INSERT INTO Postagens (data_hora)
VALUES 
('2025-06-05 10:00:00'),
('2025-06-06 14:30:00'),
('2025-06-10 16:00:00'),
('2025-06-12 09:00:00'),
('2025-06-15 11:30:00');

-- Inserir dados na tabela 'Metricas_desemp'
INSERT INTO Metricas_desemp (engajamento, alcance, conversoes, impressoes)
VALUES 
('Alto', 'Alto', 'Moderado', 'Muito Alto'),
('Moderado', 'Moderado', 'Baixo', 'Alto'),
('Baixo', 'Alto', 'Alto', 'Moderado'),
('Alto', 'Muito Alto', 'Moderado', 'Moderado'),
('Moderado', 'Baixo', 'Alto', 'Baixo');

-- Inserir dados na tabela 'Fornecedores'
INSERT INTO Fornecedores (nome, contato, historico)
VALUES 
('Fornelux', '987654321', 'Fornecedor confiável desde 2019'),
('Mediaplus', '912345678', 'Fornece serviços de mídia social desde 2020'),
('Redesign Print', '923456789', 'Fornecedor de materiais gráficos desde 2018'),
('Fast Delivery', '934567890', 'Entrega rápida e eficiente desde 2021'),
('Tech Products', '945678901', 'Fornecedor de produtos tecnológicos desde 2022');

-- Inserir dados na tabela 'Contratos_serv'
INSERT INTO Contratos_serv (termos, obrigacoes, custos, data_hora)
VALUES 
('Contrato de prestação de serviços', 'Entrega de relatórios semanais', '5000', '2025-06-01 12:00:00'),
('Acordo de fornecimento de mídia', 'Fornecimento de conteúdo diário', '3000', '2025-06-03 14:00:00'),
('Contrato de design gráfico', 'Criação de posts semanais', '2500', '2025-06-07 16:00:00'),
('Acordo de fornecimento de produtos', 'Entrega quinzenal', '4000', '2025-06-10 18:00:00'),
('Contrato de campanha publicitária', 'Planejamento e execução de campanha', '10000', '2025-06-12 10:30:00');

-- Inserir dados na tabela 'conteudo_MS'
INSERT INTO conteudo_MS (texto, imagem, video, hashtags)
VALUES 
('Lançamento de novos produtos!', 'imagem1.jpg', 'video1.mp4', '#lançamento #novidades'),
('Promoção de Verão está chegando!', 'imagem2.jpg', 'video2.mp4', '#promoção #verão'),
('Ofertas imperdíveis para a Black Friday', 'imagem3.jpg', 'video3.mp4', '#blackfriday #ofertas'),
('Cozinha saudável no seu dia a dia', 'imagem4.jpg', 'video4.mp4', '#saudável #cozinha'),
('Novidades incríveis para 2025!', 'imagem5.jpg', 'video5.mp4', '#novidades #2025');
