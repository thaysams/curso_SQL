-- Tipos de conversão
-- Operador ::
-- CAST

-- EXEMPLO 1: Conversão de texto em data
-- Corrija a query abaixo utilizando o operador ::
select '2021-10-01' - '2021-02-01'
select '2021-10-01'::date - '2021-02-01'::date

-- EXEMPLO 2: Conversão de texto em numero
-- Corrija a query utilizando operador ::
select '100'::numeric - '50'::numeric

-- EXEMPLO 3: Conversão de numero em texto

select replace (11122321::text, '1', 'A')

-- EXEMPLO 4: Conversão de texto em data
-- Corrija a query abaixo utilizando CAST
select cast('2021-10-01' as date) - cast('2021-02-01' as date)
