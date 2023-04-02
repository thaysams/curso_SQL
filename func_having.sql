-- Serve para filtrar liunhas de seleção por uma coluna agrupada

-- Exemplo 1: Seleção com filtro having
-- Calcule o n° de clientes por estado filtrando apenas estados acima de 100 clientes

select 
	state, 
	count(*) as contagem
from sales.customers
group by state
having count(*) > 100
order by contagem desc

-- RESUMO:
-- Mesma função do WHERE mas pode ser usado para filtrar
-- funções agregadas enquanto where possui essa limitação
-- a função HAVING também pode filtrar coluna snão agregadas