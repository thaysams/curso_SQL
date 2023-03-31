--- Servem para executar operações matemáticas
-- Muito utilizados para criar colunas calculadas

-- Exemplo 1: Criação de coluna calculada
-- Crie uma coluna contendo a idade do cliente da tabela sales.customers


select 
	email,
	first_name,
	birth_date,
	(current_date - birth_date) / 365 as "idade do cliente"
from sales.customers
limit 10 


-- Exemplo 2: Liste os 10 clientes mais novos

select 
	email,
	first_name,
	birth_date,
	(current_date - birth_date) / 365 as "idade do cliente"
from sales.customers
order by "idade do cliente" 
limit 10 

-- Exemplo 3: Crie a coluna "nome completo" contendo o nome e sobrenome dos clientes

select
	email,
	(first_name || ' '|| last_name) as "nome completo"
from sales.customers