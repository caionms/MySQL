select distinct A.CPF, A.NOME, B.CPF from tabela_de_clientes A
left join notas_fiscais B on A.CPF = B.CPF
where B.CPF is null;

select distinct A.CPF, A.NOME, B.CPF from tabela_de_clientes A
left join notas_fiscais B on A.CPF = B.CPF
where B.CPF is null and year(B.DATA_VENDA) = 2015;