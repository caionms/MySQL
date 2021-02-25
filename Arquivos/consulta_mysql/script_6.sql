select * from tabela_de_vendedores A
inner join notas_fiscais B
on A.MATRICULA = B.MATRICULA;

select A.MATRICULA, A.NOME, count(*) from
tabela_de_vendedores A
inner join notas_fiscais B
on A.MATRICULA = B.MATRICULA
group by A.MATRICULA, A.NOME;

select sum(PRECO * QUANTIDADE) as FATURAMENTO from itens_notas_fiscais A
inner join notas_fiscais B on A.NUMERO = B.NUMERO;

select year(DATA_VENDA), sum(QUANTIDADE * PRECO) as FATURAMENTO 
from notas_fiscais NF inner join itens_notas_fiscais INF
on NF.NUMERO = INF.NUMERO 
group by year(DATA_VENDA);









