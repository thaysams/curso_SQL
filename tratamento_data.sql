-- Tipos de tratamento:
-- INTERVAL
-- DATE_TRUNC
-- EXTRACT
-- DATEDIFF

-- EXEMPLO 1: SOMA DE DATAS USANDO INTERVAL
-- CALCULE A DATA DE HOJE + 10 NAS UNIDADES DIA, MES, ANO E HORA

select (current_date + 10)
select (current_date + interval'10 month')::date
select (current_date + interval'10 year')::date
select (current_date + interval'10 hour')

-- EXEMPLO 2: TRUNCAGEM DE DATAS
-- Calcule quantas visitas ocorreram por mes no site da empresa

select
	date_trunc('month', visit_page_date)::date as visit_page_month,
	count(*)
from sales.funnel
group by visit_page_month
order by visit_page_month desc

-- EXEMPLO 3: EXTRAÇÃO DE UNIDADES DE UMA DATA UTILIZANDO EXTRACT
-- CALCULE QUAL O DIA DA SEMANA QUE MAIS RECEBE VISITAS NO SITE

-- dia que teve mais visitas foi 2021-08-19 mas n era isso que queria saber kk
with qtde_visitas as (
select 
	visit_page_date,
	count(*) as qtde_visitas
from sales.funnel
group by visit_page_date
)
	
select max(qtde_visitas), visit_page_date
from qtde_visitas
group by qtde_visitas, visit_page_date 
order by qtde_visitas desc

-- dia da semana que recebe mais visitas

select 
	extract(dow from visit_page_date) as dia_semana, 
	count(*) as num_visitas
from sales.funnel
group by dia_semana
order by num_visitas desc
limit 1;

select current_date, extract(dow from current_date)

-- EXEMPLO 4: Diferença entre datas com operador de subtração
-- Calcule a diferença entre hoje e '2018-06-01' em dias, semanas, meses e anos

select
	( current_date - ('2018-06-01')::date) as dif_dias,
	( current_date - ('2018-06-01')::date)/7 as dif_semanas,
	( current_date - ('2018-06-01')::date)/30 as dif_meses,
	( current_date - ('2018-06-01')::date)/365 as dif_anos

-- em outras linguas de sql normalmente se usa: SELECT DATEDIFF('2023-04-11', '2018-06-01') as diferenca_dias;