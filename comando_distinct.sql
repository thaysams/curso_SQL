-- Serve para remover linhas duplicadas e mostrar apenas linhas distintas
-- Muito usado na etapa de exploração das bases

-- SINTAXE:
select distinct coluna_1, coluna_2, coluna_3
from schema1.tabela1

-- EXEMPLO 1: Sem usar distinct, liste as marcas de carros que constam na tabela products

select brand
from sales.products 

-- EXEMPLO 2: Use distinct pro exemplo anterior

select distinct brand
from sales.products 

-- EXEMPLO 3: Liste as marcas e anos de modelos distintos que constam na tabela produtos

select distinct brand, model_year
from sales.products