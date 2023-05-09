# Criação das tabelas

-- Tabela de vendas consolidadas por ano e mês
CREATE TABLE `gb-project-385603.Vendas.consolidado_vendas_ano_mes` (
  ano INTEGER,
  mes INTEGER,
  total_vendas INTEGER
);

-- Tabela de vendas consolidadas por marca e linha
CREATE TABLE `gb-project-385603.Vendas.consolidado_vendas_marca_linha` (
  marca STRING,
  linha STRING,
  total_vendas INTEGER
);

-- Tabela de vendas consolidadas por marca, ano e mês
CREATE TABLE `gb-project-385603.Vendas.consolidado_vendas_marca_ano_mes` (
  marca STRING,
  ano INTEGER,
  mes INTEGER,
  total_vendas INTEGER
);

-- Tabela de vendas consolidadas por linha, ano e mês
CREATE TABLE `gb-project-385603.Vendas.consolidado_vendas_linha_ano_mes` (
  linha STRING,
  ano INTEGER,
  mes INTEGER,
  total_vendas INTEGER
);

CREATE TABLE `gb-project-385603.Vendas.base_17_18_19` (
    id_marca INTEGER,
    marca STRING,
    id_linha INTEGER,
    linha STRING,
    data_venda DATE,
    qtd_venda INTEGER
);