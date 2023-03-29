-- Serve para limitar o número de linhas da consulta
-- Muito utilizado na etapa de exploração de dados
-- SINTAXE:

select coluna1, coluna2, coluna3
from schema1.tabela1
where condicao1 = true
order by coluna1,
limit N

-- EXEMPLO 1: Liste as 10 primeiras linhas da tabela funnel

select *
from sales.funnel
limit 10

-- EXEMPLO 2: Liste os 10 produtos mais caros da tabela products

select product_id, price
from sales.products
order by price desc
limit 10

-- RESUMO:
-- (1) Comando utilizado para limitar o n° de linhas da consults
-- (2) Muito utilizado na etapa de exploração de dados
-- (3) Muito utilizado em conjunto com comando order by quando se quer obter um top N de algo