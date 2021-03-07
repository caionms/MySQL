select (rand() * (300-15+1))+15;

select floor((rand() * (300-15+1))+15); -- MIN = 15 / MAX = 300]

SET GLOBAL log_bin_trust_function_creators = 1;

select f_numero_aleatorio(10, 30);

create table tabela_numeros (NUMERO int);

select * from tabela_numeros limit 5,1;

call preencher_tabela_numeros;