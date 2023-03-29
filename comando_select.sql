-- EXEMPLOS FAZENDO USO DE SELECT
-- EXEMPLO 1: Liste os emails dos clientes da tabela sales.customers

select email
from sales.customers

-- EXEMPLO 2: Liste os emails e os nomes dos clientes da tabela sales.customers

select email, first_name, last_name
from sales.customers

-- EXEMPLO 3: Liste todas as informações de clientes da tabela sales.customers

select *
from sales.customers

-- RESUMO #########
-- (1) Comando usado para selecionar colunas de tabelas
-- (2) Quando selecionar mais de uma coluna, devem vir separadas por vírgula
-- sem conter vírgula antes do comando FROM
-- (3) Utiliza-se o asterisco (*) para selecionar todas as colunas de uma tabela