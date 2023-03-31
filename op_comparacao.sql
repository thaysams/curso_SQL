-- Servem para comparar dois valores retornando true or false
-- Muito utilizado em conjunto com a função WHERE para filtrar linhas de uma seleção
-- TIPOS: =, <, >, <>

-- EXEMPLO 1: Crie uma coluna que retorne TRUE sempre que um cliente for um profissional clt

select 
	(first_name || ' '|| last_name) as "nome completo",
	professional_status,
	(professional_status = 'clt') as cliente_clt
from sales.customers

-- RESUMO:
-- Servem para comparar dois valores retornando true ou false
-- Uitlizado para criar colunas flags