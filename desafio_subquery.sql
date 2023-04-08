-- EXERCÍCIOS ########################################################################

-- (Exercício 1) Crie uma coluna calculada com o número de visitas realizadas por cada
-- cliente da tabela sales.customers


with calc_visitas as (
	select customer_id, count(*) as qtde_visitas
	from sales.funnel
	group by customer_id
)

select
	cus.*,
	calc_visitas.qtde_visitas
from sales.customers as cus
left join calc_visitas
	on cus.customer_id = calc_visitas.customer_id
