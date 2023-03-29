-- Serve para ordenar a posição de acordo com uma regra definida pelo usuário
-- SINTAXE:

select coluna1, coluna2
from schema1.tabela1
where condicao1 = true
order by coluna1

-- EXEMPLO 1: Liste produtos da tabela products na ordem crescente com base no preço

select product_id, price
from sales.products
order by price desc --desc é decrescente

-- EXEMPLO 2: Liste o estados distintos da tabela customers em ordem decrescente

select distinct state
from sales.customers
order by state desc

-- RESUMO:
-- Comando utilizado para ordenar a seleção de acordo com uma regra definida
-- Por padrão a ordem é crescente
-- Para mudar pra decrescente usar DESC
-- String segue ordem alfabética