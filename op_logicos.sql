-- Usados para unir expressões únicas em uma composta
-- TIPOS:
-- AND
-- OR
-- NOT
-- BETWEEN
-- IN
-- LIKE
-- ILIKE
-- IS NULL

-- EXEMPLO 1: Uso do comando BETWEEN
-- Selecione veículos que custam entre 100k e 200k na tabela products

select
	product_id,
	model,
	price
from sales.products
where price between 100000 and 200000

-- EXEMPLO 2: Uso do comando NOT
-- Selecione veículos que custam abaixo de 100k ou acima de 200k

select
	product_id,
	model,
	price
from sales.products
where price not between 100000 and 200000
order by price

-- Exemplo 3: Uso do comando IN
-- Selecione produtos que sejam da marca HONDA, TOYOTA ou RENAULT
select
	product_id,
	model,
	brand
from sales.products
where brand in ('HONDA', 'TOYOTA', 'RENAULT')

-- EXEMPLO 4: Uso do comando LIKE (matchs imperfeitos)
-- Selecione os primeiros nomes distintos da tabela customers que começam com as iniciais ANA

select distinct first_name
from sales.customers
where first_name like 'ANA%' -- o % é chamado de coringa
order by first_name

-- EXEMPLO 5: Uso do comando iLIKE (ignora letras maiúsculas e minúsculas)
-- Selecione os primeiros nomes distintos da tabela customers que começam com as iniciais ANA

select distinct first_name
from sales.customers
where first_name ilike 'ana%' -- o % é chamado de coringa
order by first_name

-- EXEMPLO 6: Uso do comando IS NULL
-- Selecionar apenas linhas que contém nulo no campo population na tabela regions

select *
from temp_tables.regions
where population is null

-- RESUMO:
-- (1) Usados para unir expressões simples em composta
-- (2) AND verifica se duas comparações são simultaneamente verdadeiras
-- (3) OR verifica se uma ou outra comparação é verdadeira
-- (4) BETWEEN: verifica quais dos valores estão dentro do range definido
-- (5) IN:Funciona como multipos ORs
-- (6) LIKE e ILIKE: comparam textos e são utilizados em conjunto com %
-- (7) IS NULL: verifica se um campo é nulo
