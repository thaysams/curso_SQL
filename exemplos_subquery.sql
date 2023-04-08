-- Exemplo 1: Análise de recorrência dos leads
-- Calcule o volume de visitas por dia ao site separado por 1° visita e demais visitas
-- Visualizar data de visita, lead recorrente, e qtde de visitas

with prim_visita as (
	select customer_id, min(visit_page_date) as primeira_visita
	from sales.funnel
	group by customer_id
)
select
	fun.visit_page_date,
	(fun.visit_page_date <> prim_visita.primeira_visita) as lead_recorrente,
	count(*)
from sales.funnel as fun
left join prim_visita
	on fun.customer_id = prim_visita.customer_id
group by fun.visit_page_date, lead_recorrente
order by fun.visit_page_date desc

-- Exemplo 2: Análise do preço versus preço médio
-- Calcule, para cada visita ao site, quanto o preço de um veículo visitado pelo cliente
-- estava acima ou abaixo do preço médio dos veículos daquela marca
-- (levar em consideração os descontos dados no veículo)

with avg_preco as(
	select brand, avg(price) as preco_medio
	from sales.products
	group by brand
)
select
	fun.visit_id,
	fun.visit_page_date,
	prod.brand,
	(prod.price * (1+fun.discount)) as preco_atual,
	avg_preco.preco_medio,
	((prod.price * (1+fun.discount)) - avg_preco.preco_medio) as atual_vs_medio
from sales.funnel as fun
left join sales.products as prod
	on fun.product_id = prod.product_id
left join avg_preco
	on prod.brand = avg_preco.brand
