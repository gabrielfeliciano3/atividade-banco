-- drop database agencia_midia_soc;
create database agencia_midia_soc;
use agencia_midia_soc;

CREATE TABLE camp_mid_sociais (
id_camp INT auto_increment primary key,
nome VARCHAR (45),
objetivo VARCHAR (45),
data_inicio DATE,
data_fim DATE,
orcamento VARCHAR (45),
metrica VARCHAR (45)
);

CREATE TABLE Clientes (
    id_cliente int auto_increment PRIMARY KEY,
    nome VARCHAR (45),
    empresa VARCHAR (45),
    contato_princ VARCHAR (45),
    pagamento VARCHAR (45),
    historico VARCHAR (45)
    -- fk_Equipe_marketing_id_funcionario VARCHAR
);

CREATE TABLE Equipe_marketing (
    id_funcionario INT auto_increment PRIMARY KEY,
    nome VARCHAR (45),
    cargo VARCHAR (45),
    genero VARCHAR (45),
    data_nasc VARCHAR (45),
    estado_civil VARCHAR (45),
    salario VARCHAR (45),
    telefone VARCHAR (45),
    dados_bancarios VARCHAR (45),
    projetos VARCHAR (45)
);

CREATE TABLE Programacao_postagens (
    id_postagem INT auto_increment PRIMARY KEY,
    data_hora datetime
);

CREATE TABLE Metricas_desemp (
    id_metrica INT auto_increment PRIMARY KEY,
    engajamento VARCHAR (45),
    alcance VARCHAR (45),
    cliques VARCHAR (45),
    conversoes VARCHAR (45),
    impressoes VARCHAR (45)
    -- fk_plano_de_camp_id_camp VARCHAR
);

CREATE TABLE Fornecedores (
    id_fornecedor INT auto_increment PRIMARY KEY,
    nome VARCHAR (45),
    contato VARCHAR (45),
    historico VARCHAR (45)
    -- fk_plano_de_camp_id_camp VARCHAR
);

CREATE TABLE Contratos_acordos_serv (
    id_contrato INT auto_increment PRIMARY KEY,
    termos VARCHAR (45),
    obrigacoes VARCHAR (45),
    custos VARCHAR (45)
    -- fk_Clientes_id_cliente VARCHAR
);

CREATE TABLE conteudo_MS (
    id_cont INT auto_increment PRIMARY KEY,
    texto VARCHAR (45),
    imagem VARCHAR (45),
    video VARCHAR (45),
    hashtags VARCHAR (45),
    link VARCHAR (45)
    -- fk_plano_de_camp_id_camp VARCHAR
);

CREATE TABLE plano_de_camp (
    data_inicio DATE,
    data_fim DATE
    -- fk_Clientes_id_cliente VARCHAR
);

 
