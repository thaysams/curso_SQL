-- Exemplo 1: Identifique qual é o status profissional mais frequente nos clientes
-- que compraram automóveis no site

select 
	count(fun.paid_date) as pagamentos, 
	cus.professional_status
from sales.funnel as fun
left join sales.customers as cus
	on fun.customer_id = cus.customer_id
group by cus.professional_status
order by pagamentos desc

-- Exemplo 2: Identifique qual o gênero mais frequente nos clientes que compraram
-- automóveis no site. Utilizar temp_tables.ibge_genders

select
	ibge.gender,
	count(fun.paid_date) as pagamentos
from sales.funnel as fun
left join sales.customers as cus
	on fun.customer_id = cus.customer_id
left join temp_tables.ibge_genders as ibge
	on lower(cus.first_name) = ibge.first_name
group by ibge.gender


-- Exemplo 3: Identifique de qual região são os clientes que mais visitam o site

select
	count(fun.visit_page_date) as visitantes,
	reg.region
from sales.funnel as fun
left join sales.customers as cus
	on fun.customer_id = cus.customer_id
left join temp_tables.regions as reg
	on cus.state = reg.state
	and lower(cus.city) = lower(reg.city)
group by reg.region
order by visitantes desc
	
