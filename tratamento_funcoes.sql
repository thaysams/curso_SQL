-- Servem para criar comandos personalizados de scrips que usamos correntemente

-- Exemplo 1: Crie uma função chamada DATEDIFF para calcular a diferença
-- entre duas datas em dias, semanas, meses e anos

create function datediff(unidade varchar, data_inicial date, data_final date)
returns integer 
language sql
as

$$

	select
		case
			when unidade in ('d', 'days', 'day') then (data_final - data_inicial)
			when unidade in ('w', 'week', 'weeks') then (data_final - data_inicial)/7
			when unidade in ('m', 'month', 'months') then (data_final - data_inicial)/30
			when unidade in ('y', 'year', 'years') then (data_final - data_inicial)/365
			end as diferenca

$$

select datediff('y', '2022-01-01', current_date)

-- Exemplo de como deletar a funcao 
-- drop function datediff

-- RESUMO ########
-- Para criar funções se usa o comando creat function
-- Para que o comando funcione é obrigatorio informar a) quais as unidades dos inputs,
-- b) quais as unidades do outputs,e em qual linguagem a funcao vai ser escrita
-- o script deve estar delimitado por $$
-- para deletar uma funcao se utiliza drop function