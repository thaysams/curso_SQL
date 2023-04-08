-- Servem para consultar dados de outras consultas

-- TIPOS:
-- Subquery no WHERE
-- Subquery com WITH
-- Subquery no FROM
-- Subquery no SELECT

-- Exemplo 1: Subquery no WHERE
--  Informe qual o veículo mais barato na tabela products

select *
from sales.products
where price = (select min(price) from sales.products)

-- Exemplo 2: Subquery com WITH
--  Calcule a idade média dos clientes por status profissional

with alguma_tabela as (select professional_status,(current_date - birth_date)/365 as idade from sales.customers)
select
	professional_status,
	avg(idade) as "idade média"
from alguma_tabela
group by professional_status

-- Exemplo 3: Subquery no FROM
--  Calcule a idade média dos clientes por status profissional

select
	professional_status,
	avg(idade) as "idade média"
from (
		select 
			professional_status,
			(current_date - birth_date)/365 as idade 
		from sales.customers
	) as alguma_tabela
group by professional_status

-- Todo uso de subquery no FROM pode ser substituido por uma no WITH

-- Exemplo 4: Subquery no SELECT
-- Na tabela sales.funnel crie uma coluna que informe o n° de visitas acumuladas
-- que a loja visitada recebeu até o momento

select
	fun.visit_id,
	fun.visit_page_date,
	sto.store_name,
	(
		select count(*)
		from sales.funnel as fun2
		where fun2.visit_page_date <= fun.visit_page_date
			and fun2.store_id = fun.store_id
	) as "visitas acumuladas"
from sales.funnel as fun
left join sales.stores as sto
	on fun.store_id = sto.store_id
order by sto.store_name, fun.visit_page_date
