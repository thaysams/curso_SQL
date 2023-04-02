-- Serve pra agrupar registros semelhantes de uma coluna
-- Normalmente utilizado em conjunto com as funções de agregação

-- Exemplo 1: Contagem agrupada de uma coluna
-- Calcule o numero de clientes da tabela customers por estado

select 
	state, 
	count (*)
from sales.customers
group by state

-- Exemplo 2: Contagem agrupada de várias coisas
-- Calcule o n° de clientes por estado e status profissional

select 
	state,
	professional_status,
	count(*)
from sales.customers
group by state, professional_status
order by count desc

-- Exemplo 3: Seleção de valores distintos
-- Selecione os estados distintos na tabela customers utilizando group by

select distinct state
from sales.customers

select state
from sales.customers
group by state

-- RESUMO:
-- Normalmente utilizando em conjunto com funções de agregação
-- Pode-se referenciar a coluna a ser agrupada pela sua posição ordinal
-- GROUP BY sozinho funciona como distinct