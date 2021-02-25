select curdate();

select current_time();

select current_timestamp();

select NOME, year(current_date()) - year(DATA_DE_NASCIMENTO) as IDADE from tabela_de_clientes;

SELECT NOME, TIMESTAMPDIFF (YEAR, DATA_DE_NASCIMENTO, CURDATE()) AS IDADE FROM  tabela_de_clientes;

SELECT '2020-07-02' as DATA_FINAL, '2019-04-13' as DATA_INICIAL, TIMESTAMPDIFF (month, '2019-04-13', '2020-07-02') AS DIFF;