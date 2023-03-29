-- Comando WHERE serve pra filtrar as linhas da tabela de acordo com uma condição
-- SINTAXE:

select coluna_1
from schema1.tabela1
where condicao_x = true

-- EXEMPLO 1: Liste os emails dos clientes que moram no estado de Santa Catarina

select email, state
from sales.customers
where state = 'SC'

-- EXEMPLO 2: Liste os emails dos clientes que moram em SC ou MS

select email, state
from sales.customers
where state = 'SC' or state = 'MS'

-- EXEMPLO 3: Liste os emails dos clientes que moram em SC ou MS e que tem mais de 30 anos

select email, state, birth_date
from sales.customers
where (state = 'SC' or state = 'MS') and birth_date < '1993-01-01' -- posso escrever data sem o -


-- RESUMO:
-- comando WHERE utilizado para filtrar linhas de acordo com uma condição
-- No PostegreSQL se utiliza aspas simples para delimitar strings
-- No PostegreSQL as datas são escritas no formato 'YYYY-MM-DD'

