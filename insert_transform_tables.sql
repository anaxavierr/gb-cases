INSERT INTO `gb-project-385603.Vendas.base_17_18_19` (data_venda, marca, linha, qtd_venda)
SELECT 
    data_venda,
    marca,
    linha,
    qtd_venda
FROM `gb-project-385603.Vendas.base_2017_1`
UNION ALL
SELECT 
    data_venda,
    marca,
    linha,
    qtd_venda
FROM `gb-project-385603.Vendas.base_2018_1`
UNION ALL
SELECT 
    data_venda,
    marca,
    linha,
    qtd_venda
FROM `gb-project-385603.Vendas.base_2019_2`;



-- Transformações para as tabelas consolidadas

-- Tabela consolidado_vendas_ano_mes
INSERT INTO `gb-project-385603.Vendas.consolidado_vendas_ano_mes` (ano, mes, total_vendas)
SELECT
  EXTRACT(YEAR FROM data_venda) AS ano,
  EXTRACT(MONTH FROM data_venda) AS mes,
  SUM(qtd_venda) AS total_vendas
FROM `gb-project-385603.Vendas.base_17_18_19`
GROUP BY 1, 2;

-- Tabela consolidado_vendas_marca_linha
INSERT INTO `gb-project-385603.Vendas.consolidado_vendas_marca_linha` (marca, linha, total_vendas)
SELECT
  marca,
  linha,
  SUM(qtd_venda) AS total_vendas
FROM `gb-project-385603.Vendas.base_17_18_19`
GROUP BY 1, 2;

-- Tabela consolidado_vendas_marca_ano_mes
INSERT INTO `gb-project-385603.Vendas.consolidado_vendas_marca_ano_mes` (marca, ano, mes, total_vendas)
SELECT
  marca,
  EXTRACT(YEAR FROM data_venda) AS ano,
  EXTRACT(MONTH FROM data_venda) AS mes,
  SUM(qtd_venda) AS total_vendas
FROM `gb-project-385603.Vendas.base_17_18_19`
GROUP BY 1, 2, 3;

-- Tabela consolidado_vendas_linha_ano_mes
INSERT INTO `gb-project-385603.Vendas.consolidado_vendas_linha_ano_mes` (linha, ano, mes, total_vendas)
SELECT
  linha,
  EXTRACT(YEAR FROM data_venda) AS ano,
  EXTRACT(MONTH FROM data_venda) AS mes,
  SUM(qtd_venda) AS total_vendas
FROM `gb-project-385603.Vendas.base_17_18_19`
GROUP BY 1, 2, 3;