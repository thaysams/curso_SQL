-- Comando Union: Colar uma tabela sobre a outra, desde que haja a mesma quantidade de colunas 
-- e as colunas tenham o mesmo tipo de unidade
-- Union All: não remove linhas duplicadas
-- Union: remove linhas duplicadas (mais pesado que o union all)

-- Exemplo 1: União simples de duas tabelas
-- Una a tabela sales.products com a tabela temp_tables.products_2

select * from sales.products
union all
select * from temp_tables.products_2