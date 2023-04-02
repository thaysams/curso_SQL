-- Servem para executar operações aritméticas nos registros de uma coluna
-- TIPOS DE FUNÇÕES AGREGADAS:
-- COUNT()
-- SUM()
-- MIN()
-- MAX()
-- AVG()

-- EXEMPLOS: Contagem de linhas de uma tabela
-- Conte todas as visitas realizadas ao site da empresa fictícia

select count (*)
from sales.funnel

-- EXEMPLOS: Contagem de linhas de uma coluna
-- Conte todas os pagamentos registrados na tabela sales.funnel

select count (paid_date)
from sales.funnel

-- EXEMPLOS: Contagem distinta de coluna
-- Conte todos os produtos distintos visitados em jan/2021

select count (distinct product_id)
from sales.funnel
where visit_page_date between '2021-01-01' and '2021-01-31'

-- EXEMPLOS: Calcule os preços minimos, medio e max dos produtos da tabela

select
	max(price) as "preço máximo",
	min(price) as "preço mínimo",
	avg(price) as "preço médio"
from sales.products

-- EXEMPLOS: Informe qual o veículo mais caro da tabela

select *
from sales.products
where price = (select max(price) from sales.products)