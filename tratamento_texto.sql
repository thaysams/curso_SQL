-- Tratamento de texto
-- Tipos:
-- LOWER()
-- UPPER()
-- TRIM()
-- REPLACE()

-- EXEMPLO 1: Corrija o primeiro elemento das queries abaixo utilizando os comandos
-- de tratamento de texto para que o resultado seja sempre TRUE

select 'São Paulo' = 'São Paulo'

select upper('São Paulo') = 'SÃO PAULO'

select lower('São Paulo') = 'são paulo'

select trim('SÃO PAULO       ') = 'SÃO PAULO' -- remove caracteres iniciais do inicio e final

select replace('SAO PAULO', 'SAO', 'SÃO') = 'SÃO PAULO'
